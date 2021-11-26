
package=helloworld
/bin/rm -v -fr ${package}/build 2> /dev/null
/bin/rm -v ${package}/*.so 2> /dev/null
/bin/rm -v ${package}/${package}.c 2> /dev/null

package=cython_template
/bin/rm -v -fr build 2> /dev/null
/bin/rm -v ${package}/*.so 2> /dev/null
/bin/rm -v ${package}/cy_template.c 2> /dev/null

