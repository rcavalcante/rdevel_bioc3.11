FROM bioconductor/bioconductor_docker:devel

RUN Rscript -e "\
    install.packages(c('BiocCheck', 'BiocStyle', 'devtools', 'knitr', 'rmarkdown', 'roxygen2', 'testthat', 'tidyverse'), dependencies = TRUE); \
    BiocManager::install(c('annotatr', 'bsseq', 'chipenrich', 'DSS', 'org.Dm.eg.db', 'org.Dm.eg.db', 'org.Hs.eg.db', 'org.Mm.eg.db', 'org.Rn.eg.db', 'rtracklayer', 'TxDb.Dmelanogaster.UCSC.dm3.ensGene', 'TxDb.Dmelanogaster.UCSC.dm6.ensGene', 'TxDb.Drerio.UCSC.danRer10.refGene', 'TxDb.Hsapiens.UCSC.hg19.knownGene', 'TxDb.Hsapiens.UCSC.hg38.knownGene', 'TxDb.Mmusculus.UCSC.mm9.knownGene', 'TxDb.Mmusculus.UCSC.mm10.knownGene', 'TxDb.Rnorvegicus.UCSC.rn4.ensGene', 'TxDb.Rnorvegicus.UCSC.rn5.refGene', 'TxDb.Rnorvegicus.UCSC.rn6.refGene'), dependencies = TRUE, ask = FALSE, update = TRUE); \
    devtools::install_github('sartorlab/methylSig', dependencies = TRUE);"
