FROM condaforge/mambaforge:4.12.0-2

RUN conda create -n trinity-env && \
    conda install -n trinity-env -c bioconda trinity && \ 
    conda install -n trinity-env -c bioconda rsem && \ 
    conda install -n trinity-env python=3.9 && \
    conda install -n trinity-env -c bioconda samtools && \
    conda install -n trinity-env -c conda-forge jellyfish && \ 
    conda install -n trinity-env -c bioconda salmon && \ 
    conda install -n trinity-env -c bioconda bowtie2 && \
    conda install -n trinity-env -c bioconda express && \
    conda install -n trinity-env -c bioconda bowtie 

RUN conda create -n busco-env && \
    conda install -n busco-env -c conda-forge biopython && \ 
    conda install -n busco-env -c bioconda busco && \ 
    conda install -n busco-env python=3.9 && \
    conda install -n busco-env -c conda-forge pandas && \
    conda install -n busco-env -c conda-forge jellyfish && \ 
    conda install -n busco-env -c bioconda blast && \ 
    conda install -n busco-env -c bioconda augustus && \
    conda install -n busco-env -c bioconda prodigal && \ 
    conda install -n busco-env -c bioconda metaeuk && \
    conda install -n busco-env -c bioconda hmmer && \
    conda install -n busco-env -c bioconda sepp && \
    conda install -n busco-env -c conda-forge r-ggplot2 && \
    conda install -n busco-env pip && \
    pip install citipy