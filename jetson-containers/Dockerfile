FROM dustynv/pytorch:2.1-r36.2.0

# 使用国内镜像源安装依赖，并避免缓存
RUN pip install --no-cache-dir \
    xinference \
    sentence-transformers \
    -i https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple \
    && rm -rf /root/.cache/pip/*

COPY . /opt/

RUN pip install --no-cache-dir \
    /opt/torch-2.1.0-cp310-cp310-linux_aarch64.whl \
    /opt/torchvision-0.16.0+fbb4cc5-cp310-cp310-linux_aarch64.whl \
    && cp /opt/code.py /usr/local/lib/python3.10/dist-packages/xinference/model/rerank/core.py
