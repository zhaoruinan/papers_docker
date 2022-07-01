# Docker build file of Paper:Learning Blind Video Temporal Consistency

```
docker build .  nbt1
docker run --rm --gpus all -it nbt1:latest /bin/bash
cd fast_blind_video_consistency && python test_pretrained.py -dataset DAVIS -task WCT/wave
```
