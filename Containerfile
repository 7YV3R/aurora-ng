# Allow build scripts to be referenced without being copied into the final image
FROM scratch AS ctx
COPY build_files /
COPY repo_files /repo_files

# define base image
FROM ghcr.io/ublue-os/aurora-asus-nvidia:latest

ARG AKMODS_FLAVOR="coreos-stable"
ARG BASE_IMAGE_NAME="kinoite"
ARG FEDORA_MAJOR_VERSION="41"
ARG IMAGE_NAME="aurora"
ARG IMAGE_VENDOR="ublue-os"
ARG KERNEL="6.14.4-200.fc41.x86_64"
ARG SHA_HEAD_SHORT="dedbeef"
ARG UBLUE_IMAGE_TAG="stable"
ARG VERSION=""
ARG IMAGE_PRETTY_NAME="Aurora"
ARG IMAGE_LIKE="fedora"
ARG HOME_URL="https://getaurora.dev/"
ARG DOCUMENTATION_URL="https://docs.getaurora.dev"
ARG SUPPORT_URL="https://github.com/ublue-os/aurora/issues/"
ARG BUG_SUPPORT_URL="https://github.com/ublue-os/aurora/issues/"
ARG CODE_NAME="Stargazer"

# building additional stuff on top of base image
RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,dst=/var/cache \
    --mount=type=cache,dst=/var/log \
    --mount=type=tmpfs,dst=/tmp \
    /ctx/99_build_image.sh
    
### LINTING
## Verify final image and contents are correct.
RUN bootc container lint
