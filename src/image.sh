#!/bin/bash
init_content="#!/bin/sh

mount -t proc none /proc
mount -t sysfs none /sys
mount -t debugfs none /sys/kernel/debug
mount -t devtmpfs none /dev
mknod -m 660 /dev/mem c 1 1

echo -e \"\\nBoot took \$(cut -d' ' -f1 /proc/uptime) seconds\\n\"
echo 'Welcome...'

# Insert any tests that should be executed at startup here

exec setsid cttyhack sh"

if [ -d initramfs ] ; then
    rm -rfv initramfs
fi

mkdir -pv initramfs/{bin,etc,lib,proc,sbin,sys,usr/{bin,sbin}}
cd initramfs
echo "${init_content}" > init
sudo chmod +x init

make modules_install -C ${KERNELDIR} INSTALL_MOD_PATH=`pwd`
cp -av ../busybox-1.36.0/_install/* .

cd ..
