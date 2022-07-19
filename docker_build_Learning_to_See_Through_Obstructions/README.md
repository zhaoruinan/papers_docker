# Docker build file of Paper:Learning Blind Video Temporal Consistency

```
git clone https://github.com/zhaoruinan/papers_docker.git
cd papers_docker/docker_build_Learning_to_See_Through_Obstructions
docker build -t ltsto .
docker run --rm --gpus all -p 8888:8888 --user ubuntu -it -w="/home/ubuntu"  ltsto:latest
bash cmd2.sh
jupyter notebook --allow-root --ip 0.0.0.0
cd ObstructionRemoval && python3 test_fence.py
```
