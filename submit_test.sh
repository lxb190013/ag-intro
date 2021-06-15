#!/bin/bash

#SBATCH --job-name=featurecounts
#SBATCH --ntasks=8
#SBATCH --nodes=1
#SBATCH --mem=8G
#SBATCH --partition=normal
#SBATCH --time=30:00
#SBATCH --mail-user=lxb190013@utdallas.edu
#SBATCH --mail-type=ALL

ml load subread
featureCounts -t gene -g gene_id -a genome.gtf -o counts.txt test.paired_end.sorted.bam