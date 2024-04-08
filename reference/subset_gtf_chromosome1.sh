

zcat Homo_sapiens.GRCh38.109.gtf.gz | grep -e '^#'  > Homo_sapiens.GRCh38.109.chr1.gtf
zcat Homo_sapiens.GRCh38.109.gtf.gz | grep -P '^1\t'  >> Homo_sapiens.GRCh38.109.chr1.gtf