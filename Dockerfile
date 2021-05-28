FROM alpine

RUN apk add --no-cache \
    ovmf \
    seabios \
    libvirt-client \
    libvirt-daemon \
    libvirt-common-drivers \
    libvirt-qemu \
    qemu-system-x86_64 \
    qemu-modules \
    && addgroup -S mumble-server && adduser -S mumble-server -G mumble-server
