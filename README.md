# curahack - anotation free expression analysis from RNAseq challenge
This repository contains test data for the curatime curahack hackathon. for further information on the curatime cluster and related events, please see here:
https://curatime.org/


# Description of the challenge
Gene expression analysis from bulk RNAseq data is a very well established routine process: Starting from raw sequencing data (fastq), reads are either aligned to the human genome (e.g. using star) and based on their location subsequently assigned to a given gene model (e.g. ensemble) or directly assigned using an alignment free process (e.g. kallisto). All these processes have in common that a specific gene model is required and in case a different gene model was used, the data is not directly comparable for downstream analysis. Thus, going back to the original raw sequencing data is often required to ensure comparability.


# Pain point
While the human genome reference stays the same over long periods of time, gene annotations are frequently updated and different databases exist (e.g. ucsc, ensemble, refseq, …). Ensemble, which is frequently used by many researchers, exists already in version 112 (March 2024), with several updates trough-out the year; thus, frequent reanalysis of the original data is often required. This is the case for in-house generated data but also for public available data, which always requires downloading of large raw sequencing files and storage of those files for long periods to enable updates on the analysis. 

For example the GDC data portal contains 44TB of raw bulk RNAseq data, that is also prprocessed as gene and transcript level expression data available. However, when comparing to other datasets in order to assure same annotation, reprocessing of such large ammounts of data can often not be avoided.


# Desired state
An annotation free analysis preprocessing step that maintains quantitative information without the need to use a specific annotation as an intermediate step would be highly desirable. The intermediate data should allow downstream gene and transcript level expression analysis and produce count and TPM values that are comparable to standard analysig. At the same time file size should be drastically reduced compared to (gzipped) bam or fastq files.

Imaginable would be a compact file that stores information on read mappings after alignment to a genome, e.g. wig file formats have been proposed in that regard before. Also, an alignment free, quantitative kmer based approach would be imaginable and potentially other approaches exist that could be explored during the Hackathon.


# Related links
star repository: https://github.com/alexdobin/STAR
kallisto repository: https://github.com/pachterlab/kallisto
ensembl: http://www.ensembl.org/info/genome/genebuild/index.html
original raw data used for generation of test data: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE217893
gdc data protal: https://portal.gdc.cancer.gov
