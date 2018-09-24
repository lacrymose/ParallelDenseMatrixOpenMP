#!/bin/bash

module load intel/2017A
export OMP_NUM_THREADS=8
ulimit -S -s 1048576

icc -qopenmp -o seq.exe matrix_seq.c
icc -qopenmp -o par.exe matrix_par.c


echo "Running Sequential ..."
#./seq.exe 2000
bsub < matrix.job
echo "Running Parallel ... "
#./par.exe 2000


