
cimport cython
import ctypes           # Import python package required to use cython
import numpy as np
cimport numpy as cnp    # cython support for numpy
#from numpy import int32, float, double
#from numpy cimport int32_t, float_t, double_t

# These cython declarations must be equivalent to C declarations src/my_cfunctions.h
cdef extern from "src/my_cfunctions.h":
    # Define cython data structure
    struct Params:
        int N;

    # Define cython function
    void my_c_function(float *array_in, float *array_out, Params par);


def cython_function(arr_in):
    "Cythonized python that calls external C function"

    # prepare input numpy array
    if not arr_in.flags["C_CONTIGUOUS"]:
        arr_in = np.ascontiguousarray(arr_in, dtype=np.single)
    else:
        arr_in = arr_in.astype(np.single, copy=False)

    # declare c variables for passing to C routine
    cdef cnp.ndarray[float, ndim=1, mode="c"] cy_array = arr_in
    cdef cnp.ndarray[float, ndim=1, mode="c"] out = np.empty(arr_in.shape, dtype=ctypes.c_float)
    cdef Params params_c

    # set parameters in C struct
    params_c.N = arr_in.shape[0]

    my_c_function(&cy_array[0], &out[0], params_c)

    return out


