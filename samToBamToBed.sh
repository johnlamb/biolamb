#!/bin/bash
#SBATCH -A g2016025
#SBATCH -t 2:00:00
#SBATCH -o ../logs/bam.trimmed.aln.out
#SBATCH -e ../logs/bam.trimmed.aln.err
#SBATCH -p node -n 8
#SBATCH --mail-type=All
#SBATCH --mail-user=john.lamb@scilifelab.se

module load bioinfo-tools
module load samtools
module BEDTools

samtools import  ../data/mm10.ref.fa.fai ../output/BC1H33WT.trimmed.aln.default.sam ../output/BC1H33WT.trimmed.aln.default.bam &
samtools import  ../data/mm10.ref.fa.fai ../output/BC2H33KO.trimmed.aln.default.sam ../output/BC2H33KO.trimmed.aln.default.bam &
samtools import  ../data/mm10.ref.fa.fai ../output/BC3WT26.trimmed.aln.default.sam ../output/BC3WT26.trimmed.aln.default.bam &
samtools import  ../data/mm10.ref.fa.fai ../output/BC4ATRXKO.trimmed.aln.default.sam ../output/BC4ATRXKO.trimmed.aln.default.bam &
samtools import  ../data/mm10.ref.fa.fai ../output/BC5DAXXKO.trimmed.aln.default.sam ../output/BC5DAXXKO.trimmed.aln.default.bam &
wait

samtools sort ../output/BC1H33WT.trimmed.aln.default.bam ../output/BC1H33WT.trimmed.aln.default.sorted.bam &
samtools sort ../output/BC2H33KO.trimmed.aln.default.bam ../output/BC2H33KO.trimmed.aln.default.sorted.bam &
samtools sort ../output/BC3WT26.trimmed.aln.default.bam ../output/BC3WT26.trimmed.aln.default.sorted.bam &
samtools sort ../output/BC4ATRXKO.trimmed.aln.default.bam ../output/BC4ARTXKO.trimmed.aln.default.sorted.bam &
samtools sort ../output/BC5DAXXKO.trimmed.aln.default.bam ../output/BC5DAXXKO.trimmed.aln.default.sorted.bam &
wait

samtools index ../output/BC1H33WT.trimmed.aln.default.sorted.bam &
samtools index ../output/BC2H33KO.trimmed.aln.default.sorted.bam &
samtools index ../output/BC3WT26.trimmed.aln.default.sorted.bam &
samtools index ../output/BC4ARTXKO.trimmed.aln.default.sorted.bam &
samtools index ../output/BC5DAXXKO.trimmed.aln.default.sorted.bam &
wait

bamToBed -i ../output/BC1H33WT.trimmed.aln.default.sorted.bam > ../output/BC1H33WT.trimmed.aln.default.sorted.bed &
bamToBed -i ../output/BC2H33KO.trimmed.aln.default.sorted.bam > ../output/BC2H33KO.trimmed.aln.default.sorted.bed &
bamToBed -i ../output/BC3WT26.trimmed.aln.default.sorted.bam > ../output/BC3WT26.trimmed.aln.default.sorted.bed &
bamToBed -i ../output/BC4ATRXKO.trimmed.aln.default.sorted.bam > ../output/BC4ATRXKO.trimmed.aln.default.sorted.bed &
bamToBed -i ../output/BC5DAXXKO.trimmed.aln.default.sorted.bam > ../output/BC5DAXXKO.trimmed.aln.default.sorted.bed &
wait

