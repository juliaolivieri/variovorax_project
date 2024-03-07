# Variovorax paradoxus project

## Step 1: Clone this GitHub repository

Run the following line of code on the cluster:

`git clone https://github.com/juliaolivieri/variovorax_project.git`

## Step 2: Download the genome

To download genome (ASM18474v1, EPS), run the following two commands on the cluster:

`curl "https://api.ncbi.nlm.nih.gov/datasets/v2alpha/genome/accession/GCF_000184745.1/download?include_annotation_type=GENOME_FASTA,GENOME_GFF,RNA_FASTA,CDS_FASTA,PROT_FASTA,SEQUENCE_REPORT" --output data.zip`

`unzip data.zip`

## Step 3: Create the index for the aligner you're using

Edit the `run_index` script for the aligner you're using. You will need to change the fasta path.


