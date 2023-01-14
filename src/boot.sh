qemu-system-riscv64 \
        -kernel $1/arch/riscv/boot/Image \
        -initrd initramfs.tgz \
        -nographic \
        -machine virt \
        -append "console=ttyS0 vm_inst=1 kgdboc=ttyS1,115200"
        # -chardev socket,id=gdb,port=1234,server=on,wait=off,host=0.0.0.0 \
        # -device pci-serial, chardev=gdb \
        # -enable-kvm -cpu host -smp 2 \
        # -dtb $1/arch/riscv/boot/dts/mpfs-icicle-kit.dtb \