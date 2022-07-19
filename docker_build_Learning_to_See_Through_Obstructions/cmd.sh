#!/usr/bin/env bash
set -eu
sudo apt-get update
pip3 install --user  Cython && pip3 install  --user    h5py \
    nltk \
    numpy \
    pycocotools scikit-image
pip3 install  --user   pandas \
    jupyter notebook
set +u

