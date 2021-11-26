#include "my_cfunctions.h"

void my_c_function(float *array_in, float *array_out, struct Params par)
{
    int i;

    /* cumulative sum */
    array_out[0] = array_in[0];
    for(i = 1; i < par.N; i++)
        array_out[i] = array_in[i] + array_out[i-1];

}

