FROM andrewosh/binder-base

USER root

# Add R dependencies
RUN apt-get update
RUN apt-get install -y libzmq3-dev \
  libxrender1 xfonts-base xfonts-scalable libsm-dev libxmu-dev libfontconfig1 \
  libzmq3-dev libcurl4-gnutls-dev libssh2-1-dev libcairo2-dev

RUN conda config --add channels r
RUN conda install -y r-base r-essentials

USER main

