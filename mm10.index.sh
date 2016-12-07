#!/bin/bash
#SBATCH -A g2016025
#SBATCH -t 1:00:00
#SBATCH -o ../output/mm10.index.out
#SBATCH -p node -n 8
#SBATCH -e mm10.index.err
#SBATCH --mail-type=All
#SBATCH --mail-user=john.lamb@scilifelab.se

module load bioinfo-tools
module load bwa

bwa index -a bwtsw ../data/mm10.ref.fa
