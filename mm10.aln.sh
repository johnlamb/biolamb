#!/bin/bash
#SBATCH -A g2016025
#SBATCH -t 2:00:00
#SBATCH -o ../logs/aln.trimmed.aln.out
#SBATCH -e ../logs/aln.trimmed.aln.err
#SBATCH -p node -n 8
#SBATCH --mail-type=All
#SBATCH --mail-user=john.lamb@scilifelab.se

module load bioinfo-tools
module load bwa

bwa aln -t 8 ../data/mm10.ref.fa ../data/JL20161026_BLISS_BC1_H33_WT.trimmed.fastq > ../output/BC1H33WT.trimmed.aln.default.sai
bwa aln -t 8 ../data/mm10.ref.fa ../data/JL20161026_BLISS_BC2_H33_KO.trimmed.fastq > ../output/BC2H33KO.trimmed.aln.default.sai 
bwa aln -t 8 ../data/mm10.ref.fa ../data/JL20161026_BLISS_BC3_WT26.trimmed.fastq > ../output/BC3WT26.trimmed.aln.default.sai 
bwa aln -t 8 ../data/mm10.ref.fa ../data/JL20161026_BLISS_BC4_ATRX_KO.trimmed.fastq > ../output/BC4ATRXKO.trimmed.aln.default.sai 
bwa aln -t 8 ../data/mm10.ref.fa ../data/JL20161026_BLISS_BC5_DAXX_KO.trimmed.fastq > ../output/BC5DAXXKO.trimmed.aln.default.sai 

