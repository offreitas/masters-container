FROM riscv64/ubuntu:22.04
LABEL maintainer offreitas

ENV ARCH=riscv
ENV CROSS_COMPILE=riscv64-linux-gnu-
ENV KERNELDIR=/home/ubuntu/src/linux-6.0.19

RUN apt-get update && apt-get install -y
RUN apt-get install -y                  \
        sudo                            \
        wget                            \
        kmod                            \
        linux-headers-generic           \
        cpio                            \
        bc                              \
        #
        # Libraries to develop using qemu
        # https://medium.com/@daeseok.youn/prepare-the-environment-for-developing-linux-kernel-with-qemu-c55e37ba8ade
        #
        build-essential                 \
        fakeroot                        \
        libncurses5-dev                 \
        libssl-dev                      \
        ccache                          \
        flex                            \
        libelf-dev                      \
        libc6-armel-cross               \
        bison                           \
        #
        qemu-system-riscv64

# Create ubuntu user with sudo privileges
RUN useradd -ms /bin/bash ubuntu && \
    usermod -aG sudo ubuntu
# New added for disable sudo password
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Set as default user
USER ubuntu

RUN mkdir /home/ubuntu/tarballs
WORKDIR /home/ubuntu/tarballs

RUN wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.0.19.tar.xz ; wget https://www.busybox.net/downloads/busybox-1.36.0.tar.bz2

WORKDIR /home/ubuntu/

CMD ["/bin/bash"]
