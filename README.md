# Xinference for NVIDIA Jetson

A Docker image for running Xinference on NVIDIA Jetson platform with GPU acceleration.

# Description
- NVIDIA Jetson platform with JetPack 6.0 SDK
- Xinference version v1.4.0 with GPU acceleration support  
- Built on NVIDIA L4T ML container r36.2.0
- [BUG: Fix PyTorch TypeError: Make _ModelWrapper Inherit from nn.Module](https://github.com/xorbitsai/inference/pull/3131)

# Usage
```bash
docker-compose up -d
```