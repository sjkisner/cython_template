#include <stdio.h>
#include <stdlib.h>
#include "my_cfunctions.h"

int main()
{
    int i, N=10;
    float *array_in,*array_out;
    struct Params params;

    array_in = malloc(N*sizeof(float));
    array_out = malloc(N*sizeof(float));

    for(i = 0; i < N; i++)       
        array_in[i] = i;

    params.N = N;
    my_c_function(array_in, array_out, params);

    for(i = 0; i < N; i++)       
        printf("i=%d\tin=%.1f\tout=%.1f\n",i,array_in[i],array_out[i]);
    
    exit(0);
}

