#!/bin/bash
echo "what is the file path you want to export *.ipynb files to"
read outpath

find . -name "*.ipynb" > git_cp.out     
while read p; do
  cp $p $outpath
done <git_cp.out

rm git_cp.out
