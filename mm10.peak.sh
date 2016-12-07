#!/bin/bash
#SBATCH -A g2016025
#SBATCH -t 2:00:00
#SBATCH -o ../logs/peak.trimmed.aln.out
#SBATCH -e ../logs/peak.trimmed.aln.err
#SBATCH -p node -n 8
#SBATCH --mail-type=All
#SBATCH --mail-user=john.lamb@scilifelab.se

module load bioinfo-tools
module load MACS


macs2 callpeak -t ../output/BC1H33WT.trimmed.aln.deault.sam -f SAM -g 1.87e9 -q 0.01 -n BC1H33WT -o ../output/Peaks/ -B
macs2 callpeak -t ../output/BC2H33KO.trimmed.aln.deault.sam -f SAM -g 1.87e9 -q 0.01 -n BC2H33KO -o ../output/Peaks/ -B
macs2 callpeak -t ../output/BC3WT26.trimmed.aln.deault.sam -f SAM -g 1.87e9 -q 0.01 -n BC3WT26 -o ../output/Peaks/ -B
macs2 callpeak -t ../output/BC4ATRXKO.trimmed.aln.deault.sam -f SAM -g 1.87e9 -q 0.01 -n BC4ATRXKO -o ../output/Peaks/ -B
macs2 callpeak -t ../output/BC5DAXXKO.trimmed.aln.deault.sam -f SAM -g 1.87e9 -q 0.01 -n BC4DAXXKO -o ../output/Peaks/ -B



