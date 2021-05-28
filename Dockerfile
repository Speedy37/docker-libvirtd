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
    qemu-audio-alsa \
    qemu-audio-oss \
    qemu-audio-pa \
    qemu-audio-sdl \
    qemu-audio-spice \
    qemu-block-curl \
    qemu-block-dmg-bz2 \
    qemu-block-nfs \
    qemu-block-ssh \
    qemu-chardev-spice \
    qemu-hw-display-qxl \
    qemu-hw-display-virtio-gpu \
    qemu-hw-display-virtio-gpu-pci \
    qemu-hw-display-virtio-vga \
    qemu-hw-usb-redirect \
    qemu-img \
    && addgroup -S mumble-server && adduser -S mumble-server -G mumble-server

COPY supervisord.conf /etc/supervisord.conf

VOLUME ["/var/run/libvirt/"]

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
