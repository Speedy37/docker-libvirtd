FROM alpine

RUN apk add --no-cache \
    supervisor \
    ovmf \
    seabios \
    libvirt-client \
    libvirt-daemon \
    libvirt-common-drivers \
    libvirt-qemu \
    qemu-system-x86_64 \
    qemu-modules \
    && addgroup -S mumble-server && adduser -S mumble-server -G mumble-server

COPY supervisord.conf /etc/supervisord.conf

VOLUME ["/var/run/libvirt/"]

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
