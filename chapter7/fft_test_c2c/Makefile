
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
CUDALIBS=-lcufft 

ifeq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)
   OBJ=obj
   EXE=exe
   CUDALIBS=-defaultlib:cufft
endif

# Uncomment the CUDAFLAGS line if you have hardware requirements that require
# a specific compute capability
#CUDAFLAGS = -Mcuda=cc12

all: build run verify

build: fft_test_c2c.cuf ../common/precision_m.F90 ../common/cufft_m.cuf
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -c ../common/precision_m.F90 
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -c ../common/cufft_m.cuf 
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -o fft_test_c2c_sp.$(EXE) precision_m.$(OBJ) cufft_m.$(OBJ) $< $(CUDALIBS)
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -DDOUBLE -c ../common/precision_m.F90 
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -DDOUBLE -c ../common/cufft_m.cuf 
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -DDOUBLE -o fft_test_c2c_dp.$(EXE) precision_m.$(OBJ) cufft_m.$(OBJ) $< $(CUDALIBS)


run: fft_test_c2c_sp.$(EXE) fft_test_c2c_dp.$(EXE)
	$(RUN) ./fft_test_c2c_sp.$(EXE)
	$(RUN) ./fft_test_c2c_dp.$(EXE)

verify:


clean:
	@echo 'Cleaning up...'
	@rm -rf fft_test_c2c_sp.$(EXE) fft_test_c2c_dp.$(EXE) *.$(OBJ) *.mod *.dwf *.pdb prof

