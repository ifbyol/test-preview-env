# syntax = docker/dockerfile:experimental
FROM okteto/pipeline-runner:1.0.3

RUN apt clean && apt update && \
    apt -y install \
        default-jdk \
        maven

COPY --from=aquasec/trivy:0.18.3 /usr/local/bin/trivy /usr/local/bin/trivy
