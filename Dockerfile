FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    curl \
    && pip install --no-cache-dir \
    hvac \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["bash"]
