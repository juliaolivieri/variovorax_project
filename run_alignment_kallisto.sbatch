#!/bin/bash
#
#SBATCH --job-name=align
#SBATCH --output=job_output/align.%j.out
#SBATCH --error=job_output/align.%j.err
#SBATCH --time=1:00:00
#SBATCH --nodes=1


date

source ~/.bashrc
#conda activate diffexp_env

NAME="SRR10613920"
INPUT1="/exports/home/jolivieri/data/bulk/PRJNA594416/${NAME}_1.fastq.gz"
INPUT2="/exports/home/jolivieri/data/bulk/PRJNA594416/${NAME}_2.fastq.gz"

mkdir -p output

a="kallisto quant -i index/var_para_EPS.idx -o output -b 100 ${INPUT1} ${INPUT2}"
echo $a
eval $a

date

