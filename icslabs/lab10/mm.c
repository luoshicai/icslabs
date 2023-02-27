/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * name:LuoShicai
 * student Id:520021910605
 * Implement: Improve the performance of finding free blocks by explicit free linked lists
 *            free blocks need SUCC and PRED
 *            The explicit free linked list is classified according to the size of the block
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"


/* 
 * Basep is mem_heap_lo(), the first byte of heap, 
 * Store pointers as the difference between them and basep 
 */
static char *basep = NULL;
#define ptr_to_word(ptr) ((ptr == NULL) ? 0U : (unsigned int)((char *)(ptr) - basep))
#define word_to_ptr(word) ((word == 0U) ? NULL : (char *)basep + (unsigned int)(word))

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))


// Basic constants and macros
#define WSIZE       4           // Word and header/footer size(bytes)
#define DSIZE       8           // Double word size (bytes)
#define CHUNKSIZE   ((1<<12)+640)     // Extend heap by this amount (bytes)
#define BLKSIZE 16

#define MAX(x, y)   ((x)>(y)?(x):(y))

// Pack a size and allocated bit into a word
#define PACK(size, alloc)   ((size) | (alloc))

// Read and write a word at address p
#define GET(p)          (*(unsigned int *)(p))
#define PUT(p, val)     (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p*/
#define GET_SIZE(p)     (GET(p) & ~0x7)
#define GET_ALLOC(p)    (GET(p) & 0x1)

// Given block ptr bp, compute address of its header and footer
#define HDRP(bp)    ((char *)(bp) - WSIZE)
#define FTRP(bp)    ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

// Given block ptr bp, compute address of next and previous blocks
#define NEXT_BLKP(bp)   ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

/* Get predecessor and successor of a free block in their free list */
#define SUCC(bp) ((unsigned int*)(word_to_ptr(GET(bp))))
#define PRED(bp) ((unsigned int*)(word_to_ptr(GET((unsigned int*)(bp) + 1))))

/* Put predecessor and successor of a free block in their free list */
#define LINK_SUCC(from, to) (PUT((from), (ptr_to_word(to))))
#define LINK_PRED(from, to) (PUT((unsigned int*)(from)+1, (ptr_to_word(to))))
static char *recent_blk; /* The recent position of next fit */

/* The sizes of free lists */
#define SIZE1 (1<<4)
#define SIZE2 (1<<5)
#define SIZE3 (1<<6)
#define SIZE4 (1<<7)
#define SIZE5 (1<<8)
#define SIZE6 (1<<9)
#define SIZE7 (1<<10)
#define SIZE8 (1<<11)
#define SIZE9 (1<<12) 
#define SIZE10 (1<<13)
#define SIZE11 (1<<14)
#define SIZE12 (1<<15)
#define SIZE13 (1<<16)
#define SIZE14 (1<<17)
#define LISTNUM 15

/* Get the index of the free list where the bolck of this size should be inserted into */
#define INDEX(size) \
(int)((size > SIZE1) + (size > SIZE2) + (size > SIZE3) + (size > SIZE4) + (size > SIZE5) \
+ (size > SIZE6) + (size > SIZE7) + (size > SIZE8) + (size > SIZE9) + (size > SIZE10) + (size > SIZE11) + (size > SIZE12) \
+ (size > SIZE13) + (size > SIZE14))


static char *list_head = NULL;
static char *list_tail = NULL;
static char* heap_listp;                        // A pointer that always pointing to the prologue block

static void* extend_heap(size_t words);
static void* coalesce(void* bp);
static void place(void* bp, size_t asize);
static void* find_fit(size_t asize);
static void insert_list(void *bp);
static void remove_list(void *bp);
void init_list();

/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    basep = (char*)mem_heap_lo();
    /* Create the initial empty heap */
    int initial_size = ((2*LISTNUM+4)*WSIZE);
    if ((heap_listp = (char*)mem_sbrk(initial_size)) == (void*)-1)
        return -1;

    list_head = heap_listp;
    list_tail = heap_listp + LISTNUM*WSIZE;
    heap_listp += 2*LISTNUM*WSIZE;

    PUT(heap_listp,0);
    PUT(heap_listp + (1*WSIZE),PACK(DSIZE,1));
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE,1));
    PUT(heap_listp + (3*WSIZE), PACK(0,1));
    heap_listp += (2*WSIZE);

    init_list();
    
    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL)
        return -1;

    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"init\n");
    // fclose(fp);
    return 0;
}

void init_list(){
	for (int i = 0; i < LISTNUM; i++) {
		LINK_SUCC(list_head + i * WSIZE, NULL);
		LINK_SUCC(list_tail + i * WSIZE, NULL);
	}
}
/*
 * extend_heap - Request additional heap space
 */
static void *extend_heap(size_t words){
    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"extend_heap\n");
    // fclose(fp);

    char* bp;
    size_t size;
    
    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1)*WSIZE : words * WSIZE;
    if ((long)(bp = mem_sbrk(size)) == -1)
        return NULL;
    
    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size,0));  /* Free block header */
    PUT(FTRP(bp), PACK(size,0));  /* Free block footer */
    PUT(HDRP(NEXT_BLKP(bp)),PACK(0,1));

    /* Coalesce if the previous block was free */
    return coalesce(bp);
}
/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{  
    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"mm_malloc\n");
    // fclose(fp);

    size_t asize;
    size_t extendsize;
    char* bp;

    /* Ignore spurious requests */
    if (size == 0){
        return NULL;
    }

    /* Adjust block size to include overhead and alignment reqs */
    if (size <= DSIZE)
        asize = 2*DSIZE;
    else 
        asize = DSIZE * ((size + (DSIZE) +(DSIZE-1)) / DSIZE);
    
    /* Search the free list for a fit */
    if ((bp = find_fit(asize))!=NULL){
        place(bp,asize);
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize,CHUNKSIZE);
    if ((bp = extend_heap(extendsize/WSIZE))==NULL){
        return NULL;
    }
    place(bp,asize);
    return bp;
}

static void* find_fit(size_t asize){
    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"find_fit\n");
    // fclose(fp);
    /* First-fit search */
    unsigned int *ptr;
    for (int index = INDEX(asize); index<LISTNUM; ++index){
        ptr = SUCC(list_head + index*WSIZE);
        while (ptr!=NULL){
            if (GET_SIZE(HDRP(ptr))>=asize){
                return (void*)ptr;
            }
            ptr = SUCC(ptr);
        }
    }
    return NULL; //no fit
}


static void place(void *bp, size_t asize){
    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"place\n");
    // fclose(fp);
	size_t prev_size = GET_SIZE(FTRP(PREV_BLKP(bp)));
	size_t csize = GET_SIZE(HDRP(bp));
	remove_list(bp);
	if ((csize - asize) < BLKSIZE) {
		PUT(HDRP(bp), PACK(csize, 1));
		PUT(FTRP(bp), PACK(csize, 1));
	} else {
		if (prev_size == DSIZE || asize <= prev_size) {
			/* Previous block is Prologue Block or palced size is bigger the prev_size */
			/* Left assigned right free */
			PUT(HDRP(bp), PACK(asize, 1));
			PUT(FTRP(bp), PACK(asize, 1));
			void *n_bp = NEXT_BLKP(bp);
			PUT(HDRP(n_bp), PACK(csize-asize, 0));
			PUT(FTRP(n_bp), PACK(csize-asize, 0));
			insert_list(n_bp);
		} else {
			/* Right assigned left free */
			PUT(HDRP(bp), PACK(csize-asize, 0));
			PUT(FTRP(bp), PACK(csize-asize, 0));
			insert_list(bp);
			bp = NEXT_BLKP(bp);
			PUT(HDRP(bp), PACK(asize, 1));
			PUT(FTRP(bp), PACK(asize, 1));
		}
	}
}
/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *bp)
{
    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"mm_free\n");
    // fclose(fp);
    size_t size = GET_SIZE(HDRP(bp));
    PUT(HDRP(bp), PACK(size,0));
    PUT(FTRP(bp), PACK(size,0));
    coalesce(bp);
}


static void *coalesce(void*bp){
    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"coalesce\n");
    // fclose(fp);

    size_t size = GET_SIZE(HDRP(bp));

    if (GET_ALLOC(FTRP(PREV_BLKP(bp))) && GET_ALLOC(HDRP(NEXT_BLKP(bp)))){
        insert_list(bp);
        return bp;
    }

    else if (GET_ALLOC(FTRP(PREV_BLKP(bp))) && !GET_ALLOC(HDRP(NEXT_BLKP(bp)))) {
        remove_list(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp),PACK(size,0));
        PUT(FTRP(bp), PACK(size,0));
        insert_list(bp);
        return bp;
    }

    else if (!GET_ALLOC(FTRP(PREV_BLKP(bp))) && GET_ALLOC(HDRP(NEXT_BLKP(bp)))) {
        remove_list(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size,0));
        PUT(HDRP(PREV_BLKP(bp)),PACK(size,0));
        bp = PREV_BLKP(bp);
        insert_list(bp);
        return bp;
    }

    else{
        remove_list(NEXT_BLKP(bp));
        remove_list(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size,0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size,0));
        bp = PREV_BLKP(bp);
        insert_list(bp);
        return bp;
    }

    
}
/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{    
    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"mm_realloc\n");
    // fclose(fp);
 	size_t asize;
    size_t pack_size;
    void *oldptr = ptr;
    void *newptr;
	if (ptr == NULL) {
        newptr = mm_malloc(size);
		return newptr;
	}
	if (size == 0) {
		mm_free(ptr);
		return NULL;
	}

	if (size <= DSIZE)
		asize = 2*DSIZE;
	else
		asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE);

	size_t oldSize = GET_SIZE(HDRP(ptr));
	// size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
	size_t next_size = GET_SIZE(HDRP(NEXT_BLKP(ptr)));
	// size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(ptr)));
	size_t prev_size = GET_SIZE(FTRP(PREV_BLKP(ptr)));

	size_t copySize = oldSize - DSIZE;

	if (asize == oldSize) {
		return ptr;
	}

	else if (asize < oldSize) {
		/* No need to copy */
		if ((pack_size=(oldSize - asize)) >= BLKSIZE) {
			PUT(HDRP(ptr), PACK(asize, 1));
			PUT(FTRP(ptr), PACK(asize, 1));
			void *n_ptr = NEXT_BLKP(ptr);
			PUT(HDRP(n_ptr), PACK(pack_size, 0));
			PUT(FTRP(n_ptr), PACK(pack_size, 0));
			insert_list(coalesce(n_ptr));
		} 
		return ptr;
	}
    
	else if (asize > oldSize) {
		if (!GET_ALLOC(HDRP(NEXT_BLKP(ptr))) && asize <= oldSize + next_size) {
			/* The next block is free and the space is enough */
			remove_list(NEXT_BLKP(ptr));
			if (oldSize + next_size - asize >= BLKSIZE) {
                pack_size = oldSize + next_size - asize;
				PUT(HDRP(ptr), PACK(asize, 1));
				PUT(FTRP(ptr), PACK(asize, 1));
				void *n_ptr = NEXT_BLKP(ptr);
				PUT(HDRP(n_ptr), PACK(pack_size, 0));
				PUT(FTRP(n_ptr), PACK(pack_size, 0));
				insert_list(n_ptr);
			} else {
                pack_size = oldSize + next_size;
				PUT(HDRP(ptr), PACK(pack_size, 1));
				PUT(FTRP(ptr), PACK(pack_size, 1));
			}
			return ptr;
		}

		if (!GET_ALLOC(FTRP(PREV_BLKP(ptr))) && asize <= oldSize + prev_size) {
			/* The previous block is free and the space is enough */
			newptr = PREV_BLKP(ptr);
			remove_list(newptr);
			memmove(newptr, oldptr, copySize); // replace memcpy
			if (oldSize + prev_size - asize >= BLKSIZE) {
                pack_size = oldSize + prev_size - asize;
				PUT(HDRP(newptr), PACK(asize, 1));
				PUT(FTRP(newptr), PACK(asize, 1));
				void *n_ptr = NEXT_BLKP(newptr);
				PUT(HDRP(n_ptr), PACK(pack_size, 0));
				PUT(FTRP(n_ptr), PACK(pack_size, 0));
				insert_list(n_ptr);
			} else {
                pack_size = oldSize + prev_size;
				PUT(HDRP(newptr), PACK(pack_size, 1));
				PUT(FTRP(newptr), PACK(pack_size, 1));
			}
			return newptr;
		}

        if (!GET_ALLOC(FTRP(PREV_BLKP(ptr))) && !GET_ALLOC(HDRP(NEXT_BLKP(ptr))) && asize <=oldSize + prev_size + next_size){
            newptr = PREV_BLKP(ptr);
            remove_list(newptr);
			remove_list(NEXT_BLKP(ptr));
			memmove(newptr, oldptr, copySize); // replace memcpy
            if (oldSize + prev_size + next_size >= BLKSIZE){
				PUT(HDRP(newptr), PACK(asize, 1));
				PUT(FTRP(newptr), PACK(asize, 1));
                void *n_ptr = NEXT_BLKP(newptr);
				PUT(HDRP(n_ptr), PACK(oldSize + prev_size + next_size - asize, 0));
				PUT(FTRP(n_ptr), PACK(oldSize + prev_size + next_size - asize, 0));
				insert_list(n_ptr);
            }
            else{
 				PUT(HDRP(newptr), PACK(oldSize + prev_size + next_size, 1));
				PUT(FTRP(newptr), PACK(oldSize + prev_size + next_size, 1));               
            }         
        }

		/* Ordinary case */
		newptr = mm_malloc(size);
		if (newptr == NULL)
			return NULL;
		memcpy(newptr, oldptr, copySize);
		mm_free(oldptr);
		return newptr;
	}

	return NULL;
}

static void insert_list(void*bp){
    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"insert_list\n");
    // fclose(fp);
    int index = INDEX(GET_SIZE(HDRP(bp)));
    char* free_listp = list_head + index*WSIZE;
    char* free_tailp = list_tail + index*WSIZE;
    char* SUCC_free_listp = (char*)SUCC(free_listp);
    // The list is empty
    if (SUCC_free_listp == NULL){
        LINK_SUCC(free_listp,bp);
        LINK_SUCC(free_tailp,bp);
        LINK_SUCC(bp,NULL);
        LINK_PRED(bp,NULL);
    }
    else{
        //Insert into the list head
        if ((char*)bp < SUCC_free_listp){
            LINK_SUCC(bp,SUCC(free_listp));
            LINK_PRED(SUCC(free_listp), bp);
			LINK_PRED(bp, NULL);
			LINK_SUCC(free_listp, bp);
        }
        else if ((char*)bp > SUCC_free_listp) {
            LINK_PRED(bp, SUCC(free_tailp));
			LINK_SUCC(SUCC(free_tailp), bp);
			LINK_SUCC(bp, NULL);
			LINK_SUCC(free_tailp, bp);
        }
        else{
            char *pred = (char*)SUCC(free_listp);
            while (SUCC(pred) && (char*)SUCC(pred) < (char*)bp){
                pred = (char*)SUCC(pred);
            }
            LINK_PRED(bp,pred);
            LINK_SUCC(bp,SUCC(pred));
            LINK_PRED(SUCC(pred),bp);
            LINK_SUCC(pred,bp);    
        }
    }
}


static void remove_list(void* bp){
    // FILE* fp;
    // fp = fopen("info.txt","a");
    // fprintf(fp,"remove_list\n");
    // fclose(fp);
    int index = INDEX(GET_SIZE(HDRP(bp)));
    char *SUCC_bp = (char*)SUCC(bp);
    char *PRED_bp = (char*)PRED(bp);
    // fp = fopen("info.txt","a");
    // fprintf(fp,"%ld\n",index);
    // fclose(fp);
    char *free_listp = list_head + index*WSIZE;
    char *free_tailp = list_tail + index*WSIZE;
    if (SUCC_bp==NULL && PRED_bp == NULL){
        LINK_SUCC(free_listp,NULL);
		LINK_SUCC(free_tailp, NULL);        
    }
    else if (SUCC_bp == NULL && PRED_bp!=NULL){
        LINK_SUCC(free_tailp,PRED(bp));
        LINK_SUCC(PRED(bp),NULL);
    }
    else if (SUCC_bp != NULL && PRED_bp == NULL){
        LINK_SUCC(free_listp,SUCC(bp));
        LINK_PRED(SUCC(bp),NULL);
    }
    else if (SUCC_bp!=NULL&&PRED_bp!=NULL){
        LINK_SUCC(PRED(bp),SUCC(bp));
        LINK_PRED(SUCC(bp),PRED(bp));
    }
}

#define error_exit(_s, _a ...) printf("Error: "_s"\n", ## _a), exit(0);

/* Check the heap consistency for the following criteria:
 *
 * 1. Pointer heap_listp points to the prologue block in the heap.
 * 2. Size values and allocated/free bits(status) of all blocks are correct.
 * 3. No adjacent free blocks exist.
 * 4. Sum of block size is consistent with the heap size.
 */
int mm_check()
{
    int flag = 1;
    char *hdrp, *ftrp, *bp;
    size_t size, total_size = 0;
    int this_alloc, last_alloc;
    int recent_appeared = 0;

    if (heap_listp - (char *)mem_heap_lo() != DSIZE)
        flag=0;
        error_exit("bad position of heap_listp");
    if ((size = GET_SIZE(HDRP(heap_listp))) != DSIZE)
        flag=0;
        error_exit("bad prologue block size");
    if ((last_alloc = GET_ALLOC(HDRP(heap_listp))) != 1)
        flag=0;
        error_exit("prologue block is free");

    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (bp == recent_blk)
            recent_appeared = 1;

        hdrp = HDRP(bp);
        ftrp = FTRP(bp);
        if ((size = GET_SIZE(hdrp)) != GET_SIZE(ftrp))
            flag=0;
            error_exit("size values in header and footer differs in block %p", bp);
        total_size += size;
        if ((this_alloc = GET_ALLOC(hdrp)) != GET_ALLOC(ftrp))
            flag=0;
            error_exit("allocated/free bits in header and footer differs in block %p", bp);

        if (!this_alloc && !last_alloc)
            flag=0;
            error_exit("adjacent free blocks (%p and the previous block) escaped coalescing", bp);
        last_alloc = this_alloc;
    }

    if (GET_SIZE(HDRP(bp)) != 0)
        flag=0;
        error_exit("bad epilogue block size");
    if (!recent_appeared)
        flag=0;
        error_exit("pointer recent_blk at %p is invalid", recent_blk);
    if (total_size + DSIZE != mem_heapsize())
        flag=0;
        error_exit("total size of blocks does not equal the heap size");
    if (flag==1){
        printf("Heap consistency check passed.\n");
        return flag;
    }
    else{
        return flag;
    }    
}








