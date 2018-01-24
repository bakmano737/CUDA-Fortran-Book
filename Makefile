#
#     Copyright (c) 2017, NVIDIA CORPORATION.  All rights reserved.
#
# NVIDIA CORPORATION and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.
# 

#
# just typing 'make OPT=$(OPT)' prints out this help message
#

UNAME := $(shell uname -a)
ifneq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)
help:
	@echo "To build and run a specific example, do the following:"
	@echo "    "
	@echo "Chapter 1  "
	@echo "    "
	@echo "make OPT=$(OPT) increment                : Section 1.3.1"
	@echo "make OPT=$(OPT) increment2               : Section 1.3.2"
	@echo "make OPT=$(OPT) multidim                 : Section 1.3.3"
	@echo "make OPT=$(OPT) deviceQuery              : Section 1.4"
	@echo "    "
	@echo "Chapter 2  "
	@echo "    "
	@echo "make OPT=$(OPT) limitingFactor2          : Section 2.2"
	@echo "make OPT=$(OPT) peakBandwidth            : Section 2.3.1"
	@echo "    "
	@echo "Chapter 3  "
	@echo "    "
	@echo "make OPT=$(OPT) pinned                   : Section 3.1.1"
	@echo "make OPT=$(OPT) async                    : Section 3.1.3"
	@echo "make OPT=$(OPT) offsetNstride            : Section 3.2.2"
	@echo "make OPT=$(OPT) averageTex               : Section 3.2.3"
	@echo "make OPT=$(OPT) strideTex                : Section 3.2.3"
	@echo "make OPT=$(OPT) local                    : Section 3.2.4"
	@echo "make OPT=$(OPT) constant                 : Section 3.2.5"
	@echo "make OPT=$(OPT) sharedExample            : Section 3.3.3"
	@echo "make OPT=$(OPT) transpose                : Section 3.4"
	@echo "make OPT=$(OPT) parallelism              : Section 3.5.1"
	@echo "make OPT=$(OPT) cufILP                   : Section 3.7"
	@echo "make OPT=$(OPT) cufKernel                : Section 3.7"
	@echo "make OPT=$(OPT) cufKernel2D              : Section 3.7"
	@echo "make OPT=$(OPT) cufReduction             : Section 3.7"
	@echo "    "
	@echo "Chapter 4  "
	@echo "    "
	@echo "P2P "
	@echo "make OPT=$(OPT) minimal                  : Section 4.1"
	@echo "make OPT=$(OPT) p2pAccess                : Section 4.1.1"
	@echo "make OPT=$(OPT) directTransfer           : Section 4.1.2"
	@echo "make OPT=$(OPT) p2pBandwidth             : Section 4.1,2"
	@echo "make OPT=$(OPT) transposeP2P             : Section 4.1.3"
	@echo "MPI "
	@echo "make OPT=$(OPT) [NPROCS=n] mpiDevices    : Section 4.2.1"
	@echo "make OPT=$(OPT) [NPROCS=n] assignDevice  : Section 4.2.1"
	@echo "make OPT=$(OPT) [NPROCS=n] transposeMPI  : Section 4.2.2"
	@echo "    "
	@echo "Chapter 5  "
	@echo "    "
	@echo "make OPT=$(OPT) rng_gpu                  : Section 5.1"
	@echo "make OPT=$(OPT) pi                       : Section 5.2"
	@echo "make OPT=$(OPT) compute_pi_performance   : Section 5.3"
	@echo "make OPT=$(OPT) mc_european              : Section 5.5"
	@echo "    "
	@echo "Chapter 6  "
	@echo "    "
	@echo "make OPT=$(OPT) finiteDifference         : Section 6.1"
	@echo "make OPT=$(OPT) limitingFactor6          : Section 6.1"
	@echo "make OPT=$(OPT) finiteDifferenceStr      : Section 6.1.4"
	@echo "make OPT=$(OPT) laplace2D                : Section 6.1.4"
	@echo "    "
	@echo "Chapter 7  "
	@echo "    "
	@echo "make OPT=$(OPT) fft_test_c2c             : Section 7.1"
	@echo "make OPT=$(OPT) fft_test_r2c             : Section 7.1"
	@echo "make OPT=$(OPT) fft_derivative           : Section 7.2"
	@echo "make OPT=$(OPT) exampleOverlapFFT        : Section 7.3"
	@echo "    "
	@echo "Appendix C  "
	@echo "    "
	@echo "make OPT=$(OPT) sgemmDevice              : Section C.1"
	@echo "make OPT=$(OPT) fCallingC                : Section C.2"
	@echo "    "
	@echo "make OPT=$(OPT) all                      : all of the above tests"
	@echo ""
	@echo "where NPROCS is set to the number of processors to test, default is 2."
else
help:
	@echo "To build and run a specific example, do the following:"
	@echo "    "
	@echo "Chapter 1  "
	@echo "    "
	@echo "make OPT=$(OPT) increment                : Section 1.3.1"
	@echo "make OPT=$(OPT) increment2               : Section 1.3.2"
	@echo "make OPT=$(OPT) multidim                 : Section 1.3.3"
	@echo "make OPT=$(OPT) deviceQuery              : Section 1.4"
	@echo "    "
	@echo "Chapter 2  "
	@echo "    "
	@echo "make OPT=$(OPT) limitingFactor2          : Section 2.2"
	@echo "make OPT=$(OPT) peakBandwidth            : Section 2.3.1"
	@echo "    "
	@echo "Chapter 3  "
	@echo "    "
	@echo "make OPT=$(OPT) pinned                   : Section 3.1.1"
	@echo "make OPT=$(OPT) async                    : Section 3.1.3"
	@echo "make OPT=$(OPT) offsetNstride            : Section 3.2.2"
	@echo "make OPT=$(OPT) averageTex               : Section 3.2.3"
	@echo "make OPT=$(OPT) strideTex                : Section 3.2.3"
	@echo "make OPT=$(OPT) local                    : Section 3.2.4"
	@echo "make OPT=$(OPT) constant                 : Section 3.2.5"
	@echo "make OPT=$(OPT) sharedExample            : Section 3.3.3"
	@echo "make OPT=$(OPT) transpose                : Section 3.4"
	@echo "make OPT=$(OPT) parallelism              : Section 3.5.1"
	@echo "make OPT=$(OPT) cufILP                   : Section 3.7"
	@echo "make OPT=$(OPT) cufKernel                : Section 3.7"
	@echo "make OPT=$(OPT) cufKernel2D              : Section 3.7"
	@echo "make OPT=$(OPT) cufReduction             : Section 3.7"
	@echo "    "
	@echo "Chapter 4  "
	@echo "    "
	@echo "P2P "
	@echo "make OPT=$(OPT) minimal                  : Section 4.1"
	@echo "make OPT=$(OPT) p2pAccess                : Section 4.1.1"
	@echo "make OPT=$(OPT) p2pBandwidth             : Section 4.1,2"
	@echo "make OPT=$(OPT) transposeP2P             : Section 4.1.3"
	@echo "MPI "
	@echo "make OPT=$(OPT) [NPROCS=n] mpiDevices    : Section 4.2.1"
	@echo "make OPT=$(OPT) [NPROCS=n] assignDevice  : Section 4.2.1"
	@echo "    "
	@echo "Chapter 5  "
	@echo "    "
	@echo "make OPT=$(OPT) rng_gpu                  : Section 5.1"
	@echo "make OPT=$(OPT) pi                       : Section 5.2"
	@echo "make OPT=$(OPT) compute_pi_performance   : Section 5.3"
	@echo "make OPT=$(OPT) mc_european              : Section 5.5"
	@echo "    "
	@echo "Chapter 6  "
	@echo "    "
	@echo "make OPT=$(OPT) finiteDifference         : Section 6.1"
	@echo "make OPT=$(OPT) limitingFactor6          : Section 6.1"
	@echo "make OPT=$(OPT) finiteDifferenceStr      : Section 6.1.4"
	@echo "make OPT=$(OPT) laplace2D                : Section 6.1.4"
	@echo "    "
	@echo "Chapter 7  "
	@echo "    "
	@echo "make OPT=$(OPT) fft_test_c2c             : Section 7.1"
	@echo "make OPT=$(OPT) fft_test_r2c             : Section 7.1"
	@echo "make OPT=$(OPT) fft_derivative           : Section 7.2"
	@echo "make OPT=$(OPT) exampleOverlapFFT        : Section 7.3"
	@echo "    "
	@echo "Appendix C  "
	@echo "    "
	@echo "make OPT=$(OPT) sgemmDevice              : Section C.1"
	@echo "    "
	@echo "make OPT=$(OPT) all                      : all of the above tests"
	@echo ""
	@echo "where NPROCS is set to the number of processors to test, default is 2."
endif

NPROCS=2

#
#  Chapter 1 examples
#
deviceQuery:
	cd chapter1/deviceQuery; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

increment:
	cd chapter1/increment; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

increment2:
	cd chapter1/increment2; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

multidim:
	cd chapter1/multidim; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean



#
#  Chapter 2 examples
#
limitingFactor2:
	cd chapter2/limitingFactor; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

peakBandwidth:
	cd chapter2/peakBandwidth; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean



#
#  Chapter 3 examples
#


async:
	cd chapter3/async; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

averageTex:
	cd chapter3/averageTex; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

constant:
	cd chapter3/constant; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

cufILP:
	cd chapter3/cufILP; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

cufKernel:
	cd chapter3/cufKernel; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

cufKernel2D :
	cd chapter3/cufKernel2D ; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

cufReduction :
	cd chapter3/cufReduction ; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

local:
	cd chapter3/local; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

offsetNstride :
	cd chapter3/offsetNstride; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

parallelism:
	cd chapter3/parallelism; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

pinned:
	cd chapter3/pinned; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

sharedExample:
	cd chapter3/sharedExample; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

strideTex:
	cd chapter3/strideTex; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

transpose:
	cd chapter3/transpose; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean



#
#  Chapter 4 examples
#

# P2P

minimal:
	cd chapter4/P2P/minimal; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

p2pAccess:
	cd chapter4/P2P/p2pAccess; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

ifneq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)
directTransfer:
	cd chapter4/P2P/directTransfer; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean
endif

p2pBandwidth:
	cd chapter4/P2P/p2pBandwidth; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

transposeP2P:
	cd chapter4/P2P/transposeP2P; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean


# MPI

mpiDevices:
	cd chapter4/MPI/mpiDevices; make OPT=$(OPT) build; make OPT=$(OPT) NPROCS=$(NPROCS) run; make OPT=$(OPT) clean

assignDevice:
	cd chapter4/MPI/assignDevice; make OPT=$(OPT) build; make OPT=$(OPT) NPROCS=$(NPROCS) run; make OPT=$(OPT) clean

ifneq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)
transposeMPI:
	cd chapter4/MPI/transposeMPI; make OPT=$(OPT) build; make OPT=$(OPT) NPROCS=$(NPROCS) run; make OPT=$(OPT) clean
endif

#
#  Chapter 5 examples
#


rng_gpu:
	cd chapter5/rng_gpu; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

pi:
	cd chapter5/pi; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

compute_pi_performance:
	cd chapter5/compute_pi_performance; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

mc_european:
	cd chapter5/mc_european; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean



#
#  Chapter 6 examples
#

finiteDifference:
	cd chapter6/finiteDifference; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

limitingFactor6:
	cd chapter6/limitingFactor; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

finiteDifferenceStr:
	cd chapter6/finiteDifferenceStr; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

laplace2D:
	cd chapter6/laplace2D; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean


#
#  Chapter 7 examples
#


fft_test_c2c:
	cd chapter7/fft_test_c2c; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

fft_test_r2c:
	cd chapter7/fft_test_r2c; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

fft_derivative:
	cd chapter7/fft_derivative; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

exampleOverlapFFT:
	cd chapter7/exampleOverlapFFT; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean


#
#  Appendix C examples
#

sgemmDevice:
	cd appendixC/sgemmDevice; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean

ifneq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)
fCallingC:
	cd appendixC/fCallingC; make OPT=$(OPT) build; make OPT=$(OPT) run; make OPT=$(OPT) clean
endif


ifneq ($(findstring CYGWIN_NT, $(UNAME)), CYGWIN_NT)	
all: deviceQuery increment increment2 multidim limitingFactor2 \
     peakBandwidth async averageTex constant cufILP cufKernel \
     cufKernel2D cufReduction local offsetNstride parallelism \
     pinned sharedExample strideTex transpose \
     minimal p2pAccess directTransfer p2pBandwidth transposeP2P \
     mpiDevices assignDevice transposeMPI \
     rng_gpu pi compute_pi_performance mc_european finiteDifference \
     limitingFactor6 finiteDifferenceStr laplace2D \
     fft_test_c2c fft_test_r2c fft_derivative exampleOverlapFFT \
     sgemmDevice fCallingC
else
all: deviceQuery increment increment2 multidim limitingFactor2 \
     peakBandwidth async averageTex constant cufILP cufKernel \
     cufKernel2D cufReduction local offsetNstride parallelism \
     pinned sharedExample strideTex transpose \
     minimal p2pAccess p2pBandwidth transposeP2P \
     mpiDevices assignDevice \
     rng_gpu pi compute_pi_performance mc_european finiteDifference \
     limitingFactor6 finiteDifferenceStr laplace2D \
     fft_test_c2c fft_test_r2c fft_derivative exampleOverlapFFT \
     sgemmDevice
endif
