#!/bin/bash

seqkit="/mnt/lustre/annv/tools/seqkit"

dir="/home/annv/projects/other_projects/scRNAseq_K562/fastq"
fastq1="/home/annv/projects/other_projects/scRNAseq_K562/fastq/ALL/K562_S1_L001_R2_001.fastq.gz"
fastq2="/home/annv/projects/other_projects/scRNAseq_K562/fastq/ALL/K562_S1_L002_R2_001.fastq.gz"


#5k
echo 5k
$seqkit sample -n 3750000 -2 $fastq1 -o $dir/target_5k/K562_5k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_5k/K562_5k_S1_L001_R2_001.fastq.gz > $dir/target_5k/K562_5k_S1_L001.ids.txt
$seqkit grep -f $dir/target_5k/K562_5k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_5k/K562_5k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_5k/K562_5k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_5k/K562_5k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 3750000 -2 $fastq2 -o $dir/target_5k/K562_5k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_5k/K562_5k_S1_L002_R2_001.fastq.gz > $dir/target_5k/K562_5k_S1_L002.ids.txt
$seqkit grep -f $dir/target_5k/K562_5k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_5k/K562_5k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_5k/K562_5k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_5k/K562_5k_S1_L002_R1_001.fastq.gz


#10k
echo 10k
$seqkit sample -n 7500000 -2 $fastq1 -o $dir/target_10k/K562_10k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_10k/K562_10k_S1_L001_R2_001.fastq.gz > $dir/target_10k/K562_10k_S1_L001.ids.txt
$seqkit grep -f $dir/target_10k/K562_10k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_10k/K562_10k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_10k/K562_10k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_10k/K562_10k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 7500000 -2 $fastq2 -o $dir/target_10k/K562_10k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_10k/K562_10k_S1_L002_R2_001.fastq.gz > $dir/target_10k/K562_10k_S1_L002.ids.txt
$seqkit grep -f $dir/target_10k/K562_10k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_10k/K562_10k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_10k/K562_10k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_10k/K562_10k_S1_L002_R1_001.fastq.gz


#20k
echo 20k
$seqkit sample -n 15000000 -2 $fastq1 -o $dir/target_20k/K562_20k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_20k/K562_20k_S1_L001_R2_001.fastq.gz > $dir/target_20k/K562_20k_S1_L001.ids.txt
$seqkit grep -f $dir/target_20k/K562_20k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_20k/K562_20k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_20k/K562_20k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_20k/K562_20k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 15000000 -2 $fastq2 -o $dir/target_20k/K562_20k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_20k/K562_20k_S1_L002_R2_001.fastq.gz > $dir/target_20k/K562_20k_S1_L002.ids.txt
$seqkit grep -f $dir/target_20k/K562_20k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_20k/K562_20k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_20k/K562_20k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_20k/K562_20k_S1_L002_R1_001.fastq.gz


#45k
echo 45k
$seqkit sample -n 33750000 -2 $fastq1 -o $dir/target_45k/K562_45k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_45k/K562_45k_S1_L001_R2_001.fastq.gz > $dir/target_45k/K562_45k_S1_L001.ids.txt
$seqkit grep -f $dir/target_45k/K562_45k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_45k/K562_45k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_45k/K562_45k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_45k/K562_45k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 33750000 -2 $fastq2 -o $dir/target_45k/K562_45k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_45k/K562_45k_S1_L002_R2_001.fastq.gz > $dir/target_45k/K562_45k_S1_L002.ids.txt
$seqkit grep -f $dir/target_45k/K562_45k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_45k/K562_45k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_45k/K562_45k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_45k/K562_45k_S1_L002_R1_001.fastq.gz


#75k
echo 75k
$seqkit sample -n 56250000 -2 $fastq1 -o $dir/target_75k/K562_75k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_75k/K562_75k_S1_L001_R2_001.fastq.gz > $dir/target_75k/K562_75k_S1_L001.ids.txt
$seqkit grep -f $dir/target_75k/K562_75k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_75k/K562_75k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_75k/K562_75k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_75k/K562_75k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 56250000 -2 $fastq2 -o $dir/target_75k/K562_75k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_75k/K562_75k_S1_L002_R2_001.fastq.gz > $dir/target_75k/K562_75k_S1_L002.ids.txt
$seqkit grep -f $dir/target_75k/K562_75k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_75k/K562_75k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_75k/K562_75k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_75k/K562_75k_S1_L002_R1_001.fastq.gz


#100k
echo 100k
$seqkit sample -n 75000000 -2 $fastq1 -o $dir/target_100k/K562_100k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_100k/K562_100k_S1_L001_R2_001.fastq.gz > $dir/target_100k/K562_100k_S1_L001.ids.txt
$seqkit grep -f $dir/target_100k/K562_100k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_100k/K562_100k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_100k/K562_100k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_100k/K562_100k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 75000000 -2 $fastq2 -o $dir/target_100k/K562_100k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_100k/K562_100k_S1_L002_R2_001.fastq.gz > $dir/target_100k/K562_100k_S1_L002.ids.txt
$seqkit grep -f $dir/target_100k/K562_100k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_100k/K562_100k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_100k/K562_100k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_100k/K562_100k_S1_L002_R1_001.fastq.gz


#160k
echo 160k
$seqkit sample -n 120000000 -2 $fastq1 -o $dir/target_160k/K562_160k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_160k/K562_160k_S1_L001_R2_001.fastq.gz > $dir/target_160k/K562_160k_S1_L001.ids.txt
$seqkit grep -f $dir/target_160k/K562_160k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_160k/K562_160k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_160k/K562_160k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_160k/K562_160k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 120000000 -2 $fastq2 -o $dir/target_160k/K562_160k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_160k/K562_160k_S1_L002_R2_001.fastq.gz > $dir/target_160k/K562_160k_S1_L002.ids.txt
$seqkit grep -f $dir/target_160k/K562_160k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_160k/K562_160k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_160k/K562_160k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_160k/K562_160k_S1_L002_R1_001.fastq.gz


#200k
echo 200k
$seqkit sample -n 150000000 -2 $fastq1 -o $dir/target_200k/K562_200k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_200k/K562_200k_S1_L001_R2_001.fastq.gz > $dir/target_200k/K562_200k_S1_L001.ids.txt
$seqkit grep -f $dir/target_200k/K562_200k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_200k/K562_200k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_200k/K562_200k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_200k/K562_200k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 150000000 -2 $fastq2 -o $dir/target_200k/K562_200k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_200k/K562_200k_S1_L002_R2_001.fastq.gz > $dir/target_200k/K562_200k_S1_L002.ids.txt
$seqkit grep -f $dir/target_200k/K562_200k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_200k/K562_200k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_200k/K562_200k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_200k/K562_200k_S1_L002_R1_001.fastq.gz


#300k
echo 300k
$seqkit sample -n 225000000 -2 $fastq1 -o $dir/target_300k/K562_300k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_300k/K562_300k_S1_L001_R2_001.fastq.gz > $dir/target_300k/K562_300k_S1_L001.ids.txt
$seqkit grep -f $dir/target_300k/K562_300k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_300k/K562_300k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_300k/K562_300k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_300k/K562_300k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 225000000 -2 $fastq2 -o $dir/target_300k/K562_300k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_300k/K562_300k_S1_L002_R2_001.fastq.gz > $dir/target_300k/K562_300k_S1_L002.ids.txt
$seqkit grep -f $dir/target_300k/K562_300k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_300k/K562_300k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_300k/K562_300k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_300k/K562_300k_S1_L002_R1_001.fastq.gz


#400k
echo 400k
$seqkit sample -n 300000000 -2 $fastq1 -o $dir/target_400k/K562_400k_S1_L001_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_400k/K562_400k_S1_L001_R2_001.fastq.gz > $dir/target_400k/K562_400k_S1_L001.ids.txt
$seqkit grep -f $dir/target_400k/K562_400k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_I1_001.fastq.gz -o $dir/target_400k/K562_400k_S1_L001_I1_001.fastq.gz
$seqkit grep -f $dir/target_400k/K562_400k_S1_L001.ids.txt $dir/ALL/K562_S1_L001_R1_001.fastq.gz -o $dir/target_400k/K562_400k_S1_L001_R1_001.fastq.gz

$seqkit sample -n 300000000 -2 $fastq2 -o $dir/target_400k/K562_400k_S1_L002_R2_001.fastq.gz
$seqkit seq -n -i $dir/target_400k/K562_400k_S1_L002_R2_001.fastq.gz > $dir/target_400k/K562_400k_S1_L002.ids.txt
$seqkit grep -f $dir/target_400k/K562_400k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_I1_001.fastq.gz -o $dir/target_5k/K562_5k_S1_L002_I1_001.fastq.gz
$seqkit grep -f $dir/target_400k/K562_400k_S1_L002.ids.txt $dir/ALL/K562_S1_L002_R1_001.fastq.gz -o $dir/target_5k/K562_5k_S1_L002_R1_001.fastq.gz




