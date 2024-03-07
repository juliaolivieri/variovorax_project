# Variovorax paradoxus project

## Step 1: Clone this GitHub repository

Run the following line of code on the cluster:

`git clone https://github.com/juliaolivieri/variovorax_project.git`

## Step 2: Download the data

Download sra toolkit/install

Run:

`bash sraWrapper.sh AccList.txt`

## Step 3: Download the genome

To download genome (ASM18474v1, EPS), run the following two commands on the cluster:

`curl "https://api.ncbi.nlm.nih.gov/datasets/v2alpha/genome/accession/GCF_000184745.1/download?include_annotation_type=GENOME_FASTA,GENOME_GFF,RNA_FASTA,CDS_FASTA,PROT_FASTA,SEQUENCE_REPORT" --output data.zip`

`unzip data.zip`


## Step 4: Create conda environment (for bowtie2)

Follow the directions here:
`https://github.com/juliaolivieri/COMP_293C_Computational_Biology/tree/main/homework3_anaconda`

This will be needed to download the requisite software

## Step 4: Download kallisto

`wget https://github.com/pachterlab/kallisto/releases/download/v0.46.1/kallisto_linux-v0.46.1.tar.gz`

`tar -xvf kallisto_linux-v0.46.1.tar.gz`

Add kallisto to path
	 

## Step 5: Create the index for the aligner you're using

Edit the `run_index` script for the aligner you're using. You will need to change the fasta path.


