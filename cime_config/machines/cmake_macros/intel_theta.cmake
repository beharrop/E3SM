string(APPEND CONFIG_ARGS " --host=cray")
string(APPEND CPPDEFS " -DARCH_MIC_KNL")
string(APPEND CMAKE_Fortran_FLAGS " -fp-model consistent -fimf-use-svml=true")
string(APPEND CMAKE_Fortran_FLAGS_RELEASE " -qno-opt-dynamic-align -fp-speculation=off")
string(APPEND CMAKE_Fortran_FLAGS " -DHAVE_ERF_INTRINSICS")
set(SCC "icc")
set(SCXX "icpc")
set(SFC "ifort")
string(APPEND CMAKE_EXE_LINKER_FLAGS " -lpthread")
