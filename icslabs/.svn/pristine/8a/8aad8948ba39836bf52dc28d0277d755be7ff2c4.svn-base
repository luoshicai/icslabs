/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    if (M==32&&N==32){
        int i, j,ii,jj;
        int bsize=8;
        int tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8;
        //divide to 8*8
        for (ii=0; ii<M; ii+=bsize){                       
            for (jj=0; jj<N; jj+=bsize){
                for (i=ii; i<ii+bsize; ++i){
                    j=jj;
                    tmp1 = A[i][j];
                    tmp2 = A[i][j+1];
                    tmp3 = A[i][j+2];
                    tmp4 = A[i][j+3];
                    tmp5 = A[i][j+4];
                    tmp6 = A[i][j+5];
                    tmp7 = A[i][j+6];
                    tmp8 = A[i][j+7];
                    B[j][i] = tmp1;
                    B[j+1][i] = tmp2;
                    B[j+2][i] = tmp3;
                    B[j+3][i] = tmp4;
                    B[j+4][i] = tmp5;
                    B[j+5][i] = tmp6;
                    B[j+6][i] = tmp7;
                    B[j+7][i] = tmp8;
                }
            }
        }
    }
    else if (M==64&&N==64){
        int i, j,ii,iii,jjj;
        int flag=1;
        int tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8;
        //8*8 and 4*4
        for (iii=0; iii<M; iii+=8){                       //divide row to 8
            for (jjj=0; jjj<N; jjj+=8){                   //divide col to 8
                flag=1;
                for (ii=iii; ii<iii+8; ii+=4){            //divide 8 row to 4
                    if (ii < iii+4){
                        for (i=ii; i<ii+4; ++i){              //for one row
                            j=jjj;
                            tmp1 = A[i][j];
                            tmp2 = A[i][j+1]; 
                            tmp3 = A[i][j+2];
                            tmp4 = A[i][j+3];
                            tmp5 = A[i][j+4];
                            tmp6 = A[i][j+5];
                            tmp7 = A[i][j+6];
                            tmp8 = A[i][j+7];
                            B[j][i] = tmp1;
                            B[j+1][i] = tmp2;
                            B[j+2][i] = tmp3;
                            B[j+3][i] = tmp4; 
                            B[j][i+4] = tmp5;
                            B[j+1][i+4] = tmp6;
                            B[j+2][i+4] = tmp7;
                            B[j+3][i+4] = tmp8;                                                 
                        }
                    }
                    else {
                        for (i=ii; i<ii+4; ++i){
                            j=jjj;
                            //move B to the right place
                            if (flag==1){
                                int rowtmp=j+i-ii;
                                int coltmp=j+i-ii;
                                tmp1 = B[rowtmp][ii];
                                tmp2 = B[rowtmp][ii+1];
                                tmp3 = B[rowtmp][ii+2];
                                tmp4 = B[rowtmp][ii+3];
                                //load A's 
                                tmp5 = A[ii][coltmp];
                                tmp6 = A[ii+1][coltmp];
                                tmp7 =A[ii+2][coltmp];
                                tmp8 =A[ii+3][coltmp];  
                                B[coltmp][ii] = tmp5;
                                B[coltmp][ii+1] = tmp6;
                                B[coltmp][ii+2] = tmp7;
                                B[coltmp][ii+3] = tmp8; 
                                //store to B                             
                                B[rowtmp+4][ii-4] = tmp1;
                                B[rowtmp+4][ii-3] = tmp2;
                                B[rowtmp+4][ii-2] = tmp3;
                                B[rowtmp+4][ii-1] = tmp4;
                                if (i==ii+3){
                                    i=ii-1;
                                    flag=0;
                                }
                            }
                            else{
                                int coltmp=j+i-ii+4;
                                tmp5 = A[ii][coltmp];
                                tmp6 = A[ii+1][coltmp];
                                tmp7 =A[ii+2][coltmp];
                                tmp8 =A[ii+3][coltmp];
                                B[coltmp][ii] = tmp5;
                                B[coltmp][ii+1] = tmp6;
                                B[coltmp][ii+2] = tmp7;
                                B[coltmp][ii+3] = tmp8;
                            }
                        }
                    }                                  
                }
            }
        }
    }
    else if (M==61&&N==67){
        int i, j,ii,jj;
        int bsize=8;
        int tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8;
        //8*8
        for (ii=0; ii<64; ii+=bsize){
            for (jj=0; jj<56; jj+=bsize){
                for (i=ii; i<ii+bsize; ++i){
                    j=jj;
                    tmp1 = A[i][j];
                    tmp2 = A[i][j+1];
                    tmp3 = A[i][j+2];
                    tmp4 = A[i][j+3];
                    tmp5 = A[i][j+4];
                    tmp6 = A[i][j+5];
                    tmp7 = A[i][j+6];
                    tmp8 = A[i][j+7];
                    B[j][i] = tmp1;
                    B[j+1][i] = tmp2;
                    B[j+2][i] = tmp3;
                    B[j+3][i] = tmp4;
                    B[j+4][i] = tmp5;
                    B[j+5][i] = tmp6;
                    B[j+6][i] = tmp7;
                    B[j+7][i] = tmp8;
                }
            }
        }
        //process the rest
        for (i=0; i<67; ++i){
            j=56;
            tmp1 = A[i][j];
            tmp2 = A[i][j+1];
            tmp3 = A[i][j+2];
            tmp4 = A[i][j+3];
            tmp5 = A[i][j+4];
            B[j][i] = tmp1;
            B[j+1][i] = tmp2;
            B[j+2][i] = tmp3;
            B[j+3][i] = tmp4;
            B[j+4][i] = tmp5;
        }
        for (j=0; j<56; ++j){
            i=64;
            tmp1 = A[i][j];
            tmp2 = A[i+1][j];
            tmp3 = A[i+2][j];
            B[j][i] = tmp1;
            B[j][i+1] = tmp2;
            B[j][i+2] = tmp3;
        }
    }
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

