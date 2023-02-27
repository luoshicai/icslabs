//name: Luo Shicai ID:520021910605
#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <time.h>

typedef struct cache_line{
    bool valid;
    size_t tag;
    clock_t time;
}line_t;

typedef struct cache_set{
    line_t* lines;
}set_t;

//the data that directly
int set_bit;
int line_num;
int block_bit;
char* file_name=NULL;

//the data that get after processing
set_t* setTable;
size_t set_num;
size_t block_size;
FILE* trace_file=NULL;
size_t tag;
int set_index;
int hit_count=0;
int miss_count=0;
int eviction_count=0;
//bit mask
size_t tag_mask=~0;
size_t set_mask=~0;
size_t block_mask=~0;
bool detail=0;
bool hit=0;
bool miss=0;
bool eviction=0;

//prints usage info
void print_usage(){
    printf("Usage: ./csim-ref [-hv] -s <s> -E <E> -b <b> -t <tracefile>\n");
    printf("-h: Optional help flag that prints usage info\n");
    printf("-v: Optional verbose flag that displays trace info\n");
    printf("-s <s>: Number of set index bits\n");
    printf("-E <E>: Associativity (number of lines per set)\n");
    printf("-b <b>: Number of block bits\n");
    printf("-t <tracefile>: Name of the valgrind trace to replay\n");
    return;
}

//init cache
void init_cache(){
    setTable = (set_t*)malloc(set_num*sizeof(set_t));
    for (size_t i=0;i<set_num;++i){
        setTable[i].lines=(line_t*)malloc(line_num*sizeof(line_t));
        for (size_t j=0;j<line_num;++j){
            setTable[i].lines[j].valid=0;
            setTable[i].lines[j].time=0;
            setTable[i].lines[j].tag=0;
        }
    }   
    return;
}

//parse address
void parse_address(size_t address){
    tag=address&tag_mask;
    size_t tmp=address&set_mask;
    tmp=tmp>>block_bit;
    set_index=tmp;
    return;
}

//process instruction
void process_ins(char ins_type){
    size_t minTime=~0;
    line_t* tmp;
    line_t* line;
    //hit
    for (int i=0;i<line_num;++i){
        tmp=&setTable[set_index].lines[i];
        if (tmp->tag==tag&&tmp->valid){
            hit=1;
            hit_count++;
            tmp->time=clock();
            return;
        }
    }
    //miss 
    miss_count++;
    for (int i=0;i<line_num;++i){
        tmp=&setTable[set_index].lines[i];
        if (tmp->valid==0){
            miss=1;
            tmp->valid=1;
            tmp->tag=tag;
            tmp->time=clock();
            return;
        }
        else{
            if (tmp->time<minTime){
                line=tmp;
                minTime=tmp->time;
            }
        }
    }
    miss=1;
    eviction=1;
    eviction_count++;
    line->tag=tag;
    line->time=clock();
    return;
}

int main(int argc, char* argv[])
{    
    
    char option;
    while ((option=getopt(argc,argv,"hvs:E:b:t:")) != -1)
    {
        switch (option)
        {
        case 'h':
            print_usage();
            break;
        case 'v':
            detail=1;
            break;
        case 's':
            set_bit=atoi(optarg);
            break;
        case 'E':
            line_num=atoi(optarg);
            break;
        case 'b':
            block_bit=atoi(optarg);
            break;
        case 't':
            if((file_name = malloc(strlen(optarg))) == NULL){
                print_usage();
                exit(1);
            }
            memcpy(file_name,optarg,strlen(optarg));
            break;             
        default:
            print_usage();
            exit(1);
            break;
        }
    }
    set_num = 1 << set_bit;
    block_size = 1 << block_bit;
    
    if (!(trace_file = fopen(file_name,"r"))){
        exit(1);
    }

    //set mask
    block_mask=~(block_mask<<block_bit);
    set_mask=~(set_mask<<(block_bit+set_bit))^block_mask;
    tag_mask=tag_mask<<(block_bit+set_bit);

    //init
    init_cache();
    
    char ins_type;
    size_t address;
    int size;
    //read from trace file
    while (fscanf(trace_file,"%c %lx,%d",&ins_type,&address,&size)!=EOF){
        //ignore I and filter space
        if (ins_type!='M'&&ins_type!='L'&&ins_type!='S'){
            continue;
        }
        hit=0;
        miss=0;
        eviction=0;
        parse_address(address);
        process_ins(ins_type);
         
        //-v show details 
        if (detail){
            printf("%c %lx,%d",ins_type,address,size);
            if (hit){
                printf(" hit");
            }
            else {
                printf(" miss");
            }
            if (eviction){
                printf(" eviction");
            }
        }
        if (ins_type=='M'){
            if (detail){
                printf(" hit");
            }
            hit_count++;
        }
        if (detail){
            printf("\n");
        }
    }
    
    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}
