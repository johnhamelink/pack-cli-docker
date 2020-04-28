FROM alpine:latest

ARG PACK_CLI_VERSION=0.10.0

RUN wget https://github.com/buildpacks/pack/releases/download/v${PACK_CLI_VERSION}/pack-v${PACK_CLI_VERSION}-linux.tgz && \
    tar xvf pack-v${PACK_CLI_VERSION}-linux.tgz -C /usr/bin && \
    rm pack-v${PACK_CLI_VERSION}-linux.tgz

ENTRYPOINT ["/usr/bin/pack"]
CMD ["help"]
