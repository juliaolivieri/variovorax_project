#!/usr/bin/env bash

INFILE=$1
for x in $(cat ${INFILE})
do
  sbatch  --time=24:00:00 --wrap="fastq-dump --split-files --gzip ${x}"
done
