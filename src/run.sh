qemu-system-arm \
        -m 2G \
        -smp 2 \
        -kernel $1/arch/arm64/boot/bzImage \
        -append "console=ttyS0 root=/dev/sda earlyprintk=serial net.ifnames=0 nokaslr" \
        -drive file=$2/stretch.img,format=raw \
        -net user,host=10.0.2.10,hostfwd=tcp:127.0.0.1:10021-:22 \
        -net nic,model=e1000 \
        -enable-kvm \
        -nographic \
        -machine virt \
        -pidfile vm.pid \
        2>&1 | tee vm.log