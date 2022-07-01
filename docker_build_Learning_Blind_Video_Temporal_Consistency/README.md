# Docker build file of Paper:Learning Blind Video Temporal Consistency

```
git clone https://github.com/zhaoruinan/papers_docker.git
cd papers_docker/docker_build_Learning_Blind_Video_Temporal_Consistency
docker build -t cu9_torch0_4 .
docker run --rm --gpus all -it cu9_torch0_4:latest /bin/bash
cd fast_blind_video_consistency && python test_pretrained.py -dataset DAVIS -task WCT/wave
```
