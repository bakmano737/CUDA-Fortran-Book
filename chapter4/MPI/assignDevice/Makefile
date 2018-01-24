
#
#     Copyright (c) 2017, NVIDIA CORPORATION.  All rights reserved.
#
# NVIDIA CORPORATION and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.
# 

OPT=-O2
FC=pgf90
NPROCS = 2
F90FLAGS = $(OPT)
MPIF90 = mpif90
MPIRUN = mpiexec
OBJ=o
EXE=out
RUN=
UNAME := $(shell uname -a)
ifeq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)
   OBJ=obj
   EXE=exe
   MPIF90=$(FC) -Mmpi=msmpi
endif

# Uncomment the CUDAFLAGS line if you have hardware requirements that require
# a specific compute capability
#CUDAFLAGS = -Mcuda=cc12

all: build run verify

build: assignDevice.cuf ../common/mpiDeviceUtil.cuf
	$(MPIF90) $(CUDAFLAGS) $(F90FLAGS) -c ../common/mpiDeviceUtil.cuf
	$(MPIF90) $(CUDAFLAGS) $(F90FLAGS) -o assignDevice.$(EXE) mpiDeviceUtil.$(OBJ) $<

run: assignDevice.$(EXE)
	$(RUN) $(MPIRUN) -np $(NPROCS) ./assignDevice.$(EXE)

verify:

clean:
	@echo 'Cleaning up...'
	@rm -rf assignDevice.$(EXE) *.$(OBJ) *.mod *.dwf *.pdb prof
