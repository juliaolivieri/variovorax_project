#!/bin/bash
#
#SBATCH --job-name=align
#SBATCH --output=job_output/align.%j.out
#SBATCH --error=job_output/align.%j.err
#SBATCH --time=1:00:00
#SBATCH --nodes=1


date

source ~/.bashrc
conda activate diffexp_env

NAME="SRR10613921"
INPUT1="/exports/home/jolivieri/data/bulk/PRJNA594416/${NAME}_1.fastq.gz"
INPUT2="/exports/home/jolivieri/data/bulk/PRJNA594416/${NAME}_2.fastq.gz"

mkdir -p output

a="bowtie2 -x index/var_para_EPS -1 ${INPUT1} -2 ${INPUT2} -S output/${NAME}.sam --no-unal"
echo $a
eval $a

date

