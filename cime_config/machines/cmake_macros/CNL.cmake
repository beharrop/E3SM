if (NOT MPILIB STREQUAL impi)
  string(APPEND CMAKE_OPTS " -DCMAKE_SYSTEM_NAME=Catamount")
endif()
string(APPEND CPPDEFS " -DLINUX")
if (COMP_NAME STREQUAL gptl)
  string(APPEND CPPDEFS " -DHAVE_NANOTIME -DBIT64 -DHAVE_VPRINTF -DHAVE_BACKTRACE -DHAVE_SLASHPROC -DHAVE_COMM_F2C -DHAVE_TIMES -DHAVE_GETTIMEOFDAY")
endif()
set(MPICC "cc")
set(MPICXX "CC")
set(MPIFC "ftn")
set(MPI_LIB_NAME "mpich")
set(MPI_PATH "$ENV{MPICH_DIR}")
set(NETCDF_PATH "$ENV{NETCDF_DIR}")
set(PIO_FILESYSTEM_HINTS "lustre")
set(PNETCDF_PATH "$ENV{PARALLEL_NETCDF_DIR}")
set(SCC "cc")
set(SCXX "CC")
set(SFC "ftn")
