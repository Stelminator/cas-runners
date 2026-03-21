FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    curl \
    dnsutils \
    iputils-ping \
    jq \
    netcat-openbsd \
    wget \
    && pip install --no-cache-dir \
    httpx \
    hvac \
    requests \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["bash"]
