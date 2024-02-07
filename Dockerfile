########### Dockerfile, for use with scilifelab serve

FROM continuumio/miniconda3:latest

RUN apt-get update && \
    apt-get upgrade -y && \
#    apt-get install -y git libxml2-dev libmagick++-dev libglpk40 libgfortran5 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

#RUN conda install bioconda::prokka
#RUN conda install prokka
RUN conda install -y bioconda/label/cf201901::prokka

# Command to install standard R packages from CRAN; enter the list of required packages for your app here
#RUN Rscript -e 'install.packages(c("shiny","tidyverse","BiocManager","plotly","Cairo","shinyjs","glmnet","egg","ggplot2"))'

# Command to install packages from Bioconductor; enter the list of required Bioconductor packages for your app here
#RUN Rscript -e 'BiocManager::install(c("Biostrings"),ask = F)'

#RUN rm -rf /srv/shiny-server/*
#COPY /app/ /srv/shiny-server/
#COPY / /srv/shiny-server/

#USER shiny

#EXPOSE 3838




### CMD ["/usr/bin/shiny-server"]
