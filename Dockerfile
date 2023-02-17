FROM quay.io/opendatahub-contrib/workbench-images:rstudio-c9s-py39_2023b_latest 

USER root

RUN yum install freetype-devel.x86_64 && \
    R -q -e 'install.packages(c("Rcpp", "devtools"))'

USER 1001
 
