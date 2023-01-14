find . -print0 | cpio --null -ov -H newc | gzip -9 > ../initramfs.tgz
