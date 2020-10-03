#!/usr/bin/env

docker build -f Dockerfile.deno -t urlcat-deno . && \
docker run --rm urlcat-deno run ./src/index.ts && \
docker run --rm urlcat-deno bundle ./src/index.ts && \
docker run --rm urlcat-deno lint --unstable src/ && \
docker rmi urlcat-deno