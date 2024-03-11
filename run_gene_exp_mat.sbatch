#!/bin/bash
#
#SBATCH --job-name=geneexp
#SBATCH --output=job_output/geneexp.%j.out
#SBATCH --error=job_output/geneexp.%j.err
#SBATCH --time=10:00
#SBATCH --nodes=1
##SBATCH --mem=50M


date

source ~/.bashrc
conda activate diffexp_env 

GTF="/exports/home/jolivieri/data/genomes/variovorax_paradoxus_EPS/ncbi_dataset/data/GCF_000184745.1/genomic.gtf"
OUTPUT="output/ge"
INPUT="output/*.sam"
a="featureCounts -p --countReadPairs -t exon -a ${GTF} -o ${OUTPUT} ${INPUT} "
b="cat ${OUTPUT} | cut -f1,7- | sed 1d > ${OUTPUT}.mat"
echo $a
eval $a

echo $b
eval $b

date

