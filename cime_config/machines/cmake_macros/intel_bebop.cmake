if (COMP_NAME STREQUAL gptl)
  string(APPEND CPPDEFS " -DHAVE_SLASHPROC")
endif()
string(APPEND CXX_LIBS " -lstdc++")
if (NOT DEBUG)
  string(APPEND FFLAGS " -qno-opt-dynamic-align")
endif()
if (MPILIB STREQUAL impi)
  set(MPICC "mpiicc")
  set(MPICXX "mpiicpc")
  set(MPIFC "mpiifort")
endif()
