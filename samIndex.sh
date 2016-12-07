#!/bin/bash
#SBATCH -A g2016025
#SBATCH -t 0:30:00
#SBATCH -o ../output/samIndex.out
#SBATCH -p node -n 8
#SBATCH -e ../logs/samIndex.err
#SBATCH --mail-type=All
#SBATCH --mail-user=john.lamb@scilifelab.se

module load bioinfo-tools
module load samtools

samtools faidx ../data/mm10.ref.fa
