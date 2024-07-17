ARG SOURCE_IMAGE="bluefin"
ARG SOURCE_SUFFIX="-dx-nvidia"
ARG SOURCE_TAG="40"

FROM ghcr.io/ublue-os/${SOURCE_IMAGE}${SOURCE_SUFFIX}:${SOURCE_TAG}

COPY system_files /
COPY scripts /scripts

RUN mkdir -p /var/lib/alternatives && \
    /scripts/install_packages.sh && \
    /scripts/manage_services.sh && \
    ostree container commit
