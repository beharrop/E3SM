string(APPEND CMAKE_C_FLAGS_DEBUG " -g")
string(APPEND CMAKE_C_FLAGS " -std=c99")
string(APPEND CPPDEFS " -DFORTRANUNDERSCORE -DNO_CRAY_POINTERS -DNO_SHR_VMATH -DCPRNAG")
string(APPEND CMAKE_Fortran_FLAGS " -wmismatch=mpi_send,mpi_recv,mpi_bcast,mpi_allreduce,mpi_reduce,mpi_isend,mpi_irecv,mpi_irsend,mpi_rsend,mpi_gatherv,mpi_gather,mpi_scatterv,mpi_allgather,mpi_alltoallv,mpi_file_read_all,mpi_file_write_all,mpibcast,mpiscatterv,mpi_alltoallw,nfmpi_get_vara_all,NFMPI_IPUT_VARA,NFMPI_GET_VAR_ALL,NFMPI_PUT_VARA,NFMPI_PUT_ATT_REAL,NFMPI_PUT_ATT_DOUBLE,NFMPI_PUT_ATT_INT,NFMPI_GET_ATT_REAL,NFMPI_GET_ATT_INT,NFMPI_GET_ATT_DOUBLE,NFMPI_PUT_VARA_DOUBLE_ALL,NFMPI_PUT_VARA_REAL_ALL,NFMPI_PUT_VARA_INT_ALL    -convert=BIG_ENDIAN")
string(APPEND CMAKE_Fortran_FLAGS_RELEASE " -ieee=full -O2")
string(APPEND CMAKE_Fortran_FLAGS_DEBUG " -C=all -g -time -f2003 -ieee=stop")
  if (NOT compile_threaded)
  string(APPEND CMAKE_Fortran_FLAGS_DEBUG " -gline")
  endif()
if (compile_threaded)
  string(APPEND CMAKE_Fortran_FLAGS " -openmp")
endif()
string(APPEND CMAKE_Fortran_FORMAT_FIXED_FLAG " -fixed")
string(APPEND CMAKE_Fortran_FORMAT_FREE_FLAG " -free")
if (compile_threaded)
  string(APPEND CMAKE_EXE_LINKER_FLAGS " -openmp")
endif()
set(MPICC "mpicc")
set(MPIFC "mpif90")
set(SCC "gcc")
set(SFC "nagfor")
