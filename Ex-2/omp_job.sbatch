#!/bin/bash

#Here is a comment

#SBATCH --time=0:10:00
#SBATCH --partition=broadwl
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=16000  #Per Node
#SBATCH --job-name=MyJob
#SBATCH --output=MyJob-%j.out
#SBATCH --error=MyJob-%j.err
##SBATCH --mem-per-cpu=2000 #Per CPU

module load gcc/9.2.0
make -f Makefile

export OMP_NUM_THREADS=8 
#Run your code
./norm_prog 

