FROM rocker/rstudio:4.4.2

RUN Rscript -e "install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "install.packages('remote', repos = c(CRAN = 'https://cloud.r-project.org'))"

RUN Rscript -e "print('hello')"

#COPY renv.lock /home/rstudio/renv.lock