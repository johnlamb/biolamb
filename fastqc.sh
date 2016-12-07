#!/bin/bash
module add bioinfo-tools
module add FastQC

for var in "$@"
do
	fastqc -o output/FastQC16/ $var
done
