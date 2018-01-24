
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
CUDALIBS=-lcublas

ifeq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)
   OBJ=obj
   EXE=exe
   CUDALIBS=-defaultlib:cublas
endif

# Uncomment the CUDAFLAGS line if you have hardware requirements that require
# a specific compute capability
#CUDAFLAGS = -Mcuda=cc12

all: build run verify

build: sgemmDevice.cuf sgemmDeviceOld.cuf
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -o sgemmDevice.$(EXE) sgemmDevice.cuf $(CUDALIBS)
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -o sgemmDeviceOld.$(EXE) sgemmDeviceOld.cuf $(CUDALIBS)


run: sgemmDevice.$(EXE) sgemmDeviceOld.$(EXE)
	$(RUN) ./sgemmDevice.$(EXE)
	$(RUN) ./sgemmDeviceOld.$(EXE)

verify:


clean:
	@echo 'Cleaning up...'
	@rm -rf sgemmDevice.$(EXE) sgemmDeviceOld.$(EXE) *.$(OBJ) *.mod *.dwf *.pdb prof
