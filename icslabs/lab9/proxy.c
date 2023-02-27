/*
 * proxy.c - ICS Web proxy
 * 520021910605 LuoShicai
 *
 */

#include "csapp.h"
#include <stdarg.h>
#include <sys/select.h>

/*
 * Function prototypes
 */
int parse_uri(char *uri, char *target_addr, char *path, char *port);
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr, char *uri, size_t size);
void doit(int connfd,struct sockaddr_in *clientaddr);
sem_t log_mutex;

ssize_t Rio_readlineb_w(rio_t *rp, void *usrbuf, size_t maxlen) 
{
    ssize_t rc;

    if ((rc = rio_readlineb(rp, usrbuf, maxlen)) < 0){
	    //fprintf(stderr, "Rio_readlineb error");
        rc = 0;
    }
    return rc;
} 

ssize_t Rio_readnb_w(rio_t *rp, void *usrbuf, size_t n) 
{
    ssize_t rc;

    if ((rc = rio_readnb(rp, usrbuf, n)) < 0){
	    //fprintf(stderr, "Rio_readnb error");
        rc = 0;
    }
    return rc;
}

int Rio_writen_w(int fd, void *usrbuf, size_t n) 
{
    if (rio_writen(fd, usrbuf, n) != n){
	    //fprintf(stderr, "Rio_writen error");
        return -1;
    }
    return 0;
}

typedef struct info
{
    pthread_t tid;
    int connfd;
    struct sockaddr_in clientaddr;
}info_t;

void* thread(void* info){
    Pthread_detach(Pthread_self());
    info_t *info_self = (info_t *)info;
    doit(info_self->connfd,&info_self->clientaddr);
    close(info_self->connfd);
    Free(info_self);
    return NULL;
}
/*
 * main - Main routine for the proxy program
 */
int main(int argc, char **argv)
{
    int listenfd, connfd;
    socklen_t clientlen = sizeof(struct sockaddr_in);
    struct sockaddr_in clientaddr;
    info_t* clientInfo;
    /* Check arguments */
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <port number>\n", argv[0]);
        exit(0);
    }
    Signal(SIGPIPE, SIG_IGN);
    Sem_init(&log_mutex, 0, 1);
    listenfd = Open_listenfd(argv[1]);
    while (1)
    {   
        clientInfo = Malloc(sizeof(info_t));
        clientInfo->tid = 0;
        clientInfo->connfd = Accept(listenfd, (SA*)&clientInfo->clientaddr, &clientlen);
        Pthread_create(&clientInfo->tid,NULL,thread,clientInfo);
    }
    
    close(listenfd);
    exit(0);
}


void doit(int connfd,struct sockaddr_in *clientaddr){
    rio_t rio_conn,rio_client;
    char buf[MAXLINE],method[MAXLINE],uri[MAXLINE],version[MAXLINE];
    char hostname[MAXLINE], pathname[MAXLINE], port[MAXLINE];
    char requestHeader[MAXLINE];
    int clientfd;
    size_t n, byte_size = 0, content_length = 0;
    //work as server
    Rio_readinitb(&rio_conn,connfd);
    if(Rio_readlineb_w(&rio_conn, buf, MAXLINE) == 0){
        //fprintf(stderr, "error: read empty request line\n");
        return;
    }
    if(sscanf(buf, "%s %s %s", method, uri, version) != 3){
        //fprintf(stderr, "error: mismatched parameters\n");
        return;
    }
    if(parse_uri(uri, hostname, pathname, port) != 0 ){
        //fprintf(stderr, "error: parse uri wrong\n");
        return;
    }


    //send requestHeader

    sprintf(requestHeader, "%s /%s %s\r\n", method, pathname, version);
    if ((clientfd = Open_clientfd(hostname,port))<0){
        return;
    }
    Rio_readinitb(&rio_client,clientfd);
    if (Rio_writen_w(clientfd,requestHeader,strlen(requestHeader))==-1){
        return;
    }
    while((n = Rio_readlineb_w(&rio_conn,buf,MAXLINE))!=0){    
        if (Rio_writen_w(clientfd, buf, n)==-1){
            return;
        }   
        if(!strcmp("\r\n", buf))
        {
            break;
        }
        // get the content length if exists
        if(!strncmp("Content-Length: ", buf, 16))
        {
            sscanf(buf+16, "%zu", &content_length);
        }
    }

    
    //send request body
    if(strcasecmp(method, "GET"))
    for(int i=0; i<content_length; i++){
        if(Rio_readnb_w(&rio_conn, buf, 1) == 0)
            return;
        if(Rio_writen_w(clientfd, buf, 1) == -1)
            return;
    }

    //get response header
    while((n = Rio_readlineb_w(&rio_client,buf,MAXLINE))!=0){
        byte_size+=n;
        if (Rio_writen_w(connfd,buf,n)==-1){
            return;
        }
        if(!strcmp("\r\n", buf))
        {
            break;
        }
        // get the content length if exists
        if(!strncmp("Content-Length: ", buf, 16))
        {
            sscanf(buf+16, "%zu", &content_length);
        }
    }
    
    //get response body
    for (int i=0; i<content_length; ++i){
        if (Rio_readnb_w(&rio_client, buf, 1)==0){
            Close(clientfd);
            return;
        }
        if (Rio_writen_w(connfd,buf,1)==-1){
            Close(clientfd);
            return;
        }
        byte_size++;
    }
    //output log
    format_log_entry(buf, clientaddr, uri, byte_size);
    P(&log_mutex);
    printf("%s\n", buf);
    V(&log_mutex);
    Close(clientfd);
}

/*
 * parse_uri - URI parser
 *
 * Given a URI from an HTTP proxy GET request (i.e., a URL), extract
 * the host name, path name, and port.  The memory for hostname and
 * pathname must already be allocated and should be at least MAXLINE
 * bytes. Return -1 if there are any problems.
 */
int parse_uri(char *uri, char *hostname, char *pathname, char *port)
{
    char *hostbegin;
    char *hostend;
    char *pathbegin;
    int len;

    if (strncasecmp(uri, "http://", 7) != 0) {
        hostname[0] = '\0';
        return -1;
    }

    /* Extract the host name */
    hostbegin = uri + 7;
    hostend = strpbrk(hostbegin, " :/\r\n\0");
    if (hostend == NULL)
        return -1;
    len = hostend - hostbegin;
    strncpy(hostname, hostbegin, len);
    hostname[len] = '\0';

    /* Extract the port number */
    if (*hostend == ':') {
        char *p = hostend + 1;
        while (isdigit(*p))
            *port++ = *p++;
        *port = '\0';
    } else {
        strcpy(port, "80");
    }

    /* Extract the path */
    pathbegin = strchr(hostbegin, '/');
    if (pathbegin == NULL) {
        pathname[0] = '\0';
    }
    else {
        pathbegin++;
        strcpy(pathname, pathbegin);
    }

    return 0;
}

/*
 * format_log_entry - Create a formatted log entry in logstring.
 *
 * The inputs are the socket address of the requesting client
 * (sockaddr), the URI from the request (uri), the number of bytes
 * from the server (size).
 */
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr,
                      char *uri, size_t size)
{
    time_t now;
    char time_str[MAXLINE];
    char host[INET_ADDRSTRLEN];

    /* Get a formatted time string */
    now = time(NULL);
    strftime(time_str, MAXLINE, "%a %d %b %Y %H:%M:%S %Z", localtime(&now));

    if (inet_ntop(AF_INET, &sockaddr->sin_addr, host, sizeof(host)) == NULL)
        unix_error("Convert sockaddr_in to string representation failed\n");

    /* Return the formatted log entry string */
    sprintf(logstring, "%s: %s %s %zu", time_str, host, uri, size);
}


