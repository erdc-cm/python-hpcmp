#!/bin/tcsh
#
#diamond
#
module unload compilers mpi
module load mpi/intelmpi-4.0.0
setenv PYTHONHPC_ARCH diamond
setenv PYTHONHPC_PREFIX ${PYTHONHPC}/${PYTHONHPC_ARCH}
setenv PYTHONHPC_PYTHON ${PYTHONHPC_PREFIX}/bin/python
setenv CC mpicc
setenv CXX mpicxx
setenv FC mpifc
setenv F77 mpif77
setenv F90 mpif90
setenv CFLAGS "-fPIC"
setenv CXXFLAGS "-fPIC"
setenv FCFLAGS "-fPIC"
setenv F77FLAGS "-fPIC"
setenv F90FLAGS "-fPIC"
setenv FFLAGS "-fPIC"
setenv PATH .:${PYTHONHPC_PREFIX}/bin:${PATH}
setenv LD_LIBRARY_PATH ${LD_LIBRARY_PATH}/lib:${PYTHONHPC_PREFIX}/lib
