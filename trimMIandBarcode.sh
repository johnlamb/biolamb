#!/bin/bash
module add bioinfo-tools
module add seqtk/1.0-r68e

for var in "$@"
do
	seqtk trimfq -b 16 "$var" > ${var:0:${#var}-5}trimmed.fastq
done
