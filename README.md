# docker-libvirt

Alpine Linux libvirt (qemu+kvm) docker image 

_docker run_:

```sh
mkdir run
docker run --privileged -v $(pwd)/run:/var/run/libvirt ghcr.io/speedy37/docker-libvirtd/libvirtd:main
```

_libvirtd clients_ examples:

```sh
virsh -c qemu:///system?socket=$(pwd)/run/libvirt-sock
```

```sh
virt-manager -c qemu:///system?socket=$(pwd)/run/libvirt-sock
```