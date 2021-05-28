# docker-libvirtd

Alpine Linux libvirt (qemu+kvm) docker image 

GitHub action is setup so this image is __updated every week__.

_docker run_:

```sh
mkdir run
mkdir var
docker run --privileged \
    -v $(pwd)/run:/var/run/libvirt \
    -v $(pwd)/var:/var/lib/libvirt \
    ghcr.io/speedy37/docker-libvirtd/libvirtd:main
```

_libvirtd clients_ examples:

```sh
virsh -c qemu:///system?socket=$(pwd)/run/libvirt-sock
```

```sh
virt-manager -c qemu:///system?socket=$(pwd)/run/libvirt-sock
```