# This Dockerfile is designed to be extremely simple: it installs the pack-cli Go binary into an alpine image, and then sets
# the pack command as the entrypoint, making the docker image act like an "appliance".

FROM alpine:latest

ARG PACK_CLI_VERSION=0.10.0

RUN wget https://github.com/buildpacks/pack/releases/download/v${PACK_CLI_VERSION}/pack-v${PACK_CLI_VERSION}-linux.tgz && \
    tar xvf pack-v${PACK_CLI_VERSION}-linux.tgz -C /usr/bin && \
    rm pack-v${PACK_CLI_VERSION}-linux.tgz

ENTRYPOINT ["/usr/bin/pack"]
CMD ["help"]
