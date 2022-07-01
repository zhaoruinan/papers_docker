FROM pytorch/pytorch:0.4-cuda9-cudnn7-devel

RUN apt-get update && \
    apt-get install -y \
    ant \
    ca-certificates-java \
    nano \
    openjdk-8-jdk \
    python2.7 \
    unzip \
    rsync htop git openssh-server python-pip vim \
    wget && \
    apt-get clean
    
RUN pip install Cython && pip install h5py \
    matplotlib \
    nltk \
    numpy \
    pycocotools \
    scikit-image \
    stanfordcorenlp \
    torchvision cffi tensorboardX \
    scipy colorama==0.3.7 \
    opencv-python==3.2.0.8 \
    tqdm setproctitle pytz ipython && python -c "import nltk; nltk.download('punkt')"

RUN cd ..
RUN git clone https://github.com/phoenix104104/fast_blind_video_consistency.git
RUN cd fast_blind_video_consistency && bash install.sh
RUN cd fast_blind_video_consistency/pretrained_models && bash download_models.sh
RUN sed -i 11a\sys.path.append\(\'./networks\'\)  fast_blind_video_consistency/test_pretrained.py
RUN sed -i '48 s/r/rb/g' fast_blind_video_consistency/test_pretrained.py
