# scRNAseq_K562

What number of mapped reads per cell is sufficient to detect a certain number of genes per cell? 

I try to answer this question using [GSE204750](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE204750)/[SRX15446041](https://www.ncbi.nlm.nih.gov/sra/SRX15446041[accn]) dataset. The authors report more than 500,000 mapped reads per cell.

The results are only applicable for K562 cell line and 10x Genomics 3' v3 droplet-based scRNA-seq.

At around 200,000 mapped reads per cell the number of detected genes per cell reaches a plato of 10-11,000 genes.

![Mapped reads per cell VS number of detected genes](reads_vs_genes.png?raw=true "Title")
 