FROM bioconductor/devel_core2:latest

RUN Rscript -e "\
    install.packages(c('testthat', 'tidyverse'), dependencies = TRUE); \
    BiocManager::install(c('annotatr', 'chipenrich', 'bsseq', 'DSS'), dependencies = TRUE, ask = FALSE, update = TRUE);"
