# runs QC on input FASTQs
fastqc downsampled_fastq/*.fastq.gz

# runs Trimmomatic on input FASTQs cropping to 72 bp, min length 72 bp and sliding window of 2 bp below 32 Phred score
trimmomatic PE \
	downsampled_fastq/Control_siRNA_1.fastq.gz \
	downsampled_fastq/Control_siRNA_2.fastq.gz \
	trimmed_fastq/Control_siRNA_1.trimmomatic.fastq.gz \
	trimmed_fastq/Control_siRNA_1u.trimmomatic.fastq.gz \
	trimmed_fastq/Control_siRNA_2.trimmomatic.fastq.gz \
	trimmed_fastq/Control_siRNA_2u.trimmomatic.fastq.gz \
	CROP:72 MINLEN:72 SLIDINGWINDOW:32:2

trimmomatic PE \
	downsampled_fastq/STAT5A_siRNA_1.fastq.gz \
	downsampled_fastq/STAT5A_siRNA_2.fastq.gz \
	trimmed_fastq/STAT5A_1.trimmomatic.fastq.gz \
	trimmed_fastq/STAT5A_1u.trimmomatic.fastq.gz \
	trimmed_fastq/STAT5A_2.trimmomatic.fastq.gz \
	trimmed_fastq/STAT5A_2u.trimmomatic.fastq.gz \
	CROP:72 MINLEN:72 SLIDINGWINDOW:32:2

trimmomatic PE \
	downsampled_fastq/STAT5B_siRNA_1.fastq.gz \
	downsampled_fastq/STAT5B_siRNA_2.fastq.gz \
	trimmed_fastq/STAT5B_1.trimmomatic.fastq.gz \
	trimmed_fastq/STAT5B_1u.trimmomatic.fastq.gz \
	trimmed_fastq/STAT5B_2.trimmomatic.fastq.gz \
	trimmed_fastq/STAT5B_2u.trimmomatic.fastq.gz \
	CROP:72 MINLEN:72 SLIDINGWINDOW:32:2

# runs QC again after trimming and filters
fastqc trimmed_fastq/*.fastq.gz
