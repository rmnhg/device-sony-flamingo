#!/sbin/busybox sh

#This script should make
#system boot normally but it also
#make us able to boot to any recovery
#without packing it on ramdisk.
#Instead this script loads
#recovery ramdisk from FOTAKernel
#partition.

set +x

#Save original PATH
_PATH="$PATH"

export PATH=/sbin

busybox cd /
busybox date >>boot.txt
exec >>boot.txt 2>&1
busybox rm /init

#Include device specific variables
source /sbin/bootrec-device.sh

#Create directories
busybox mkdir -m 755 -p /dev/block
busybox mkdir -m 755 -p /dev/input
busybox mkdir -m 555 -p /proc
busybox mkdir -m 755 -p /sys

#Create device nodes
busybox mknod -m 600 /dev/block/mmcblk0 b 179 0
busybox mknod -m 600 ${BOOTREC_EVENT_NODE}
busybox mknod -m 666 /dev/null c 1 3

#Mount filesystems
busybox mount -t proc proc /proc
busybox mount -t sysfs sysfs /sys

#Trigger white LED
busybox echo 255 > ${BOOTREC_LED_RED}
busybox echo 255 > ${BOOTREC_LED_GREEN}
busybox echo 255 > ${BOOTREC_LED_BLUE}

#Trigger vibration
busybox echo 200 > ${BOOTREC_VIBRATOR}

#Keycheck
busybox cat ${BOOTREC_EVENT} > /dev/keycheck&
busybox sleep 3

#Boot decision
if [ -s /dev/keycheck ] || busybox grep -q warmboot=0x77665502 /proc/cmdline ; then
	busybox echo 'RECOVERY BOOT' >>boot.txt

	#Green led for recovery boot
	busybox echo 0 > ${BOOTREC_LED_RED}
	busybox echo 255 > ${BOOTREC_LED_GREEN}
	busybox echo 0 > ${BOOTREC_LED_BLUE}

	#Prepare recovery's ramdisk
	busybox mknod -m 600 ${BOOTREC_FOTA_NODE}
	busybox mount -o remount,rw /
	busybox ln -sf /sbin/busybox /sbin/sh
	extract_elf_ramdisk -i ${BOOTREC_FOTA} -o /sbin/ramdisk-recovery.cpio -t / -c
	busybox rm /sbin/sh

	#Clean Android ramdisk files
	busybox rm init*.rc init*.sh
	busybox rm init

	#Move mke2fs.conf to /etc
	busybox rm /etc
	busybox mkdir /etc
	busybox mv /sbin/mke2fs.conf /etc/mke2fs.conf

	#Unpack recovery's ramdisk
	busybox cpio -i -u < /sbin/ramdisk-recovery.cpio
	busybox rm -rf /sbin/ramdisk-recovery.cpio
else
	busybox echo 'ANDROID BOOT' >>boot.txt

	#Power OFF LED
	busybox echo 0 > ${BOOTREC_LED_RED}
	busybox echo 0 > ${BOOTREC_LED_GREEN}
	busybox echo 0 > ${BOOTREC_LED_BLUE}
fi

#Rename init.real to init if necessary
if [ -f /init.real ]; then
    busybox mv /init.real /init
fi

#Kill the keycheck process
busybox pkill -f "busybox cat ${BOOTREC_EVENT}"

#Unmount filesystems
busybox umount /proc
busybox umount /sys

busybox rm -fr /dev/*
busybox date >>boot.txt

#Restore original PATH
export PATH="${_PATH}"

exec /init
