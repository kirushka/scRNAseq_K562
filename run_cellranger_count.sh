#!/bin/bash

cellranger="/mnt/lustre/annv/tools/cellranger-7.0.0/cellranger"
tx="/mnt/lustre/annv/tools/cellranger_ref/refdata-gex-GRCh38-2020-A"
fastq="/mnt/lustre/annv/projects/other_projects/scRNAseq_K562/fastq"

res_dir="/mnt/lustre/annv/projects/other_projects/scRNAseq_K562/cellranger"

cd $res_dir

for i in 5k 10k 20k 45k 75k 100k 160k 200k 300k 400k

do
	echo $i
	TENX_IGNORE_DEPRECATED_OS=1 $cellranger count --id k562_$i --fastqs $fastq/target_$i --transcriptome $tx 2> k562_$i.log
done


#ALL (~500k)
TENX_IGNORE_DEPRECATED_OS=1 ~/tools/cellranger-7.0.0/cellranger count --id k562_all --fastqs ~/projects/other_projects/scRNAseq_K562/fastq/ALL --transcriptome ~/tools/cellranger_ref/refdata-gex-GRCh38-2020-A