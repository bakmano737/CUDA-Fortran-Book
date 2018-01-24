
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
ifeq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)
   OBJ=obj
   EXE=exe
endif

# Uncomment the CUDAFLAGS line if you have hardware requirements that require
# a specific compute capability
#CUDAFLAGS = -Mcuda=cc12

all: build run verify

build: parallelism.cuf precision_m.cuf
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -c precision_m.cuf
	$(FC) $(CUDAFLAGS) $(F90FLAGS) -o parallelism.$(EXE) precision_m.$(OBJ) $<

run: parallelism.$(EXE)
	$(RUN) ./parallelism.$(EXE)

verify:

clean:
	@echo 'Cleaning up...'
	@rm -rf parallelism.$(EXE) *.$(OBJ) *.mod *.dwf *.pdb prof


