from setuptools import setup, Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext
import numpy as np

c_extension = Extension("cy_cext", 
                    ["src/my_cfunctions.c","c_extension.pyx"],
                    libraries=[],
                    include_dirs=[np.get_include()],
                    extra_compile_args=["-std=c11","-O3","-Wall","-Wno-unknown-pragmas"],
                    extra_link_args=["-lm","-fopenmp"])

setup(
    cmdclass={"build_ext": build_ext},
    ext_modules = [c_extension]
)

