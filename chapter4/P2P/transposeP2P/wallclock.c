
/*
 *    Copyright (c) 2017, NVIDIA CORPORATION.  All rights reserved.
 *
 * NVIDIA CORPORATION and its licensors retain all intellectual property
 * and proprietary rights in and to this software, related documentation
 * and any modifications thereto.
 *
 *
 *   These example codes are a portion of the code samples from the companion
 *   website to the book "CUDA Fortran for Scientists and Engineers":
 *
 * http://store.elsevier.com/product.jsp?isbn=9780124169708
 *
 */

#include <time.h>
#include <sys/types.h>
#ifdef _WIN32
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#else
#include <sys/times.h>
#include <sys/time.h>
#endif


double wallclock()
{
#ifdef _WIN32
  double PCFreq = 0.0;

  LARGE_INTEGER li;
  if(!QueryPerformanceFrequency(&li))
  printf("QueryPerformanceFrequency failed!\n");

  PCFreq = (double)li.QuadPart;

  QueryPerformanceCounter(&li);

  return (double)(li.QuadPart)/PCFreq;
#else
  struct timeval tv;
  struct timezone tz;
  double t;

  gettimeofday(&tv, &tz);

  t = (double)tv.tv_sec;
  t += ((double)tv.tv_usec)/1000000.0;

  return t;
#endif
}
