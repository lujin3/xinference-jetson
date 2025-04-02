FROM dustynv/pytorch:2.1-r36.2.0

# 使用国内镜像源安装依赖，并避免缓存
RUN pip config set global.index-url https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple

RUN pip install --no-cache-dir \
    xinference \
    'sentence-transformers<4.0.0' \
    'transformers==4.49.0' \
    && rm -rf /root/.cache/pip/*

COPY . /opt/

RUN pip install --no-cache-dir \
    /opt/torch-2.1.0-cp310-cp310-linux_aarch64.whl \
    /opt/torchvision-0.16.0+fbb4cc5-cp310-cp310-linux_aarch64.whl