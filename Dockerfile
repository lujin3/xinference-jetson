FROM nvcr.io/nvidia/l4t-ml:r36.2.0-py3

# 使用国内镜像源安装依赖，并避免缓存
RUN pip install --no-cache-dir \
    xinference \
    sentence-transformers \
    'sentence-transformers<4.0.0' \
    -i https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple \
    && rm -rf /root/.cache/pip/*

# 暴露端口
EXPOSE 9997

# 启动服务
CMD ["xinference-local", "--host", "0.0.0.0", "--port", "9997"]