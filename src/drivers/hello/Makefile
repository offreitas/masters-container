# If KERNELRELEASE is defined, we've been invoked from the
# kernel build system and can use its language.
ifneq ($(KERNELRELEASE),)
	obj-m := hello.o 

# Otherwise we were called directly from the command
# line; invoke the kernel build system.
else
	PWD := $(shell pwd)

all:
	$(MAKE) ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C ${KERNELDIR} M=$(PWD) modules

clean:
	$(MAKE) ARCH=${ARCH} CROSS_COMPILE=${CROSS_COMPILE} -C ${KERNELDIR} M=$(PWD) clean

endif