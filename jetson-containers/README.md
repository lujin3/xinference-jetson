# Xinference for NVIDIA jetson-containers

A Docker image for running Xinference on NVIDIA Jetson platform with GPU acceleration.

# Description
- NVIDIA Jetson platform with JetPack 6.0 SDK
- Xinference version v1.4.0 with GPU acceleration support  
- Built on NVIDIA L4T ML container r36.2.0
- [BUG: Fix PyTorch TypeError: Make _ModelWrapper Inherit from nn.Module](https://github.com/xorbitsai/inference/pull/3131)

# Usage
```bash
git clone https://github.com/lujin3/xinference-jetson.git
cd xinference-jetson
cd jetson-containers
```
## Build
```bash
docker build -t xinference:2.1-r36.2.0 .
```
## Run
```bash
jetson-containers run \
    -v ./xinf:/root \
    -e HF_ENDPOINT=https://hf-mirror.com \
    xinference:2.1-r36.2.0 \
    xinference-local --host 0.0.0.0 --port 9997
```