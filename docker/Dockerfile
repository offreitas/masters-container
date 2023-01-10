FROM ubuntu:22.04
LABEL maintainer offreitas

RUN apt-get update && apt-get install -y
RUN apt-get install -y                  \
        sudo                            \
        #
        # ARM development purposes
        #
        binutils-arm-linux-gnueabi      \
        gcc-arm-linux-gnueabi           \
        qemu-system-arm:arm64           \
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
        bison                           \
        #
        cpio                            \
        bc                              

# Create ubuntu user with sudo privileges
RUN useradd -ms /bin/bash ubuntu && \
    usermod -aG sudo ubuntu
# New added for disable sudo password
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Set as default user
USER ubuntu
WORKDIR /home/ubuntu

CMD ["/bin/bash"]
