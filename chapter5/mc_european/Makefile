
#
#     Copyright (c) 2017, NVIDIA CORPORATION.  All rights reserved.
#
# NVIDIA CORPORATION and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.
# 

OPT=-O2
FC=pgf90
F90FLAGS = $(OPT)
OBJ=o
EXE=out
RUN=
UNAME := $(shell uname -a)
CUDA_LIBS=-lcurand

ifeq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)
   OBJ=obj
   EXE=exe
   CUDA_LIBS=-defaultlib:curand
endif

# Uncomment the CUDAFLAGS line if you have hardware requirements that require
# a specific compute capability
#CUDAFLAGS = -Mcuda=cc12

all: build run verify

build: montecarlo_european_option.cuf ../common/precision_m.F90 ../common/curand_m.cuf
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -c ../common/precision_m.F90
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -c ../common/curand_m.cuf
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -o mc_european_sp.$(EXE) precision_m.$(OBJ) curand_m.$(OBJ) $(CUDA_LIBS) $<
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -DDOUBLE -c ../common/precision_m.F90
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -DDOUBLE -c ../common/curand_m.cuf
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -DDOUBLE -o mc_european_dp.$(EXE) precision_m.$(OBJ) curand_m.$(OBJ) $(CUDA_LIBS) $<

run: mc_european_sp.$(EXE) mc_european_dp.$(EXE)
	$(RUN) ./mc_european_sp.$(EXE)
	$(RUN) ./mc_european_dp.$(EXE)

verify:

clean:
	@echo 'Cleaning up...'
	@rm -rf mc_european_sp.$(EXE) mc_european_dp.$(EXE) *.$(OBJ) *.mod *.dwf *.pdb prof

