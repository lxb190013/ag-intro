all: download_data featurecounts

featurecounts: test.counts.txt

test.counts.txt:
	sbatch submit_test.sh

featurecounts: cov_counts.txt

cov_counts.txt:
	sbatch submit_cov.sh

or
BONUS
# Submit a job array with index values of 1 and 2
	sbatch --array=1-2    -N1 tmp
