#!/bin/bash
for i in $@; do
	#echo "$(($(wc -l < $i) / 4)) reads for file $i"
	printf "%'d reads for file %s\n" $(($(wc -l < $i) / 4)) "$i"
done
