# Docker For My Master's Degree

This git contains a container with RISC-V toolchain pulled from **[riscv63/ubuntu](https://hub.docker.com/r/riscv64/ubuntu)** and downloads **linux-6.1.6** and **busybox-1.36.0** in `/home/ubuntu/tarballs`. It also adds a `ubuntu` user as sudoer without a password, alongside with packages to build linux and busybox from source. Some other packages are installed to build from source according to an article from **[medium](https://medium.com/@daeseok.youn/prepare-the-environment-for-developing-linux-kernel-with-qemu-c55e37ba8ade)**.
