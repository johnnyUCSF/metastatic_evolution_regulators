#!/bin/bash
echo "what is the file you want to format"
read infile

outfile="convtd_$infile"

awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' < $infile > $outfile
