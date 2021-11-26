from setuptools import setup, Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext
import numpy as np

package = "cython_template" 
package_dir = package
src_dir = package_dir+"/src"
    
c_extension = Extension(package_dir+".cy_template", 
                    [src_dir+"/my_cfunctions.c",package_dir+"/cy_template.pyx"],
                    libraries=[],
                    include_dirs=[np.get_include()],
                    extra_compile_args=["-std=c11","-O3","-Wall","-Wno-unknown-pragmas"],
                    extra_link_args=["-lm","-fopenmp"])

setup(
    packages=[package_dir],
    name = package,
    cmdclass={"build_ext": build_ext},
    ext_modules = [c_extension]
)

