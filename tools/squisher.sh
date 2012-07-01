#!/bin/sh
# This script is included in squisher
# It is the final build step (after OTA package)

DEVICE_TOP=$ANDROID_BUILD_TOP/device/motorola/omap34com

# TODO: find way to make this work across all devices in bootmenu dir using a var
DEVICE_HIJACK=$ANDROID_BUILD_TOP/device/motorola/shadow/prebuilt/etc/hijack-boot/newboot
MODULE_TOP=$ANDROID_BUILD_TOP/vendor/b00sted/prebuilt/bootmenu/shadow/lib/modules
VENDOR_TOP=$ANDROID_BUILD_TOP/vendor/b00sted/prebuilt/bootmenu

# add an empty script to prevent logcat errors (moto init.rc)
touch $REPACK/ota/system/bin/mount_ext3.sh
chmod +x $REPACK/ota/system/bin/mount_ext3.sh

# Bootmenu cp files


mkdir -p $REPACK/ota/system/bootmenu
	cp -rf $DEVICE_TOP/bootmenu/* $REPACK/ota/system/bootmenu/

mkdir -p $REPACK/ota/system/bootmenu/2nd-init
	cp -f $OUT/root/init $REPACK/ota/system/bootmenu/2nd-init/init
	cp -f $DEVICE_HIJACK/*.rc $REPACK/ota/system/bootmenu/2nd-init/
	cp -f $DEVICE_HIJACK/default.prop $REPACK/ota/system/bootmenu/2nd-init

mkdir -p $REPACK/ota/system/bootmenu/2nd-init/sbin
	cp -f $OUT/symbols/hijack-boot/2nd-init $REPACK/ota/system/bootmenu/2nd-init/sbin/2nd-init
	cp -f $OUT/symbols/hijack-boot/getprop $REPACK/ota/system/bootmenu/2nd-init/sbin/getprop
	cp -f $OUT/symbols/hijack-boot/stop $REPACK/ota/system/bootmenu/2nd-init/sbin/stop
	cp -f $OUT/symbols/sbin/adbd $REPACK/ota/system/bootmenu/2nd-init/sbin/adbd

mkdir -p $REPACK/ota/system/bootmenu/binary
	cp -f $OUT/symbols/hijack-boot/2nd-init $REPACK/ota/system/bootmenu/binary/2nd-init
	cp -f $OUT/system/xbin/busybox $REPACK/ota/system/bootmenu/binary/busybox
	cp -f $VENDOR_TOP/common/binary/lsof $REPACK/ota/system/bootmenu/binary/lsof
	cp -f $OUT/symbols/sbin/adbd $REPACK/ota/system/bootmenu/binary/adbd
	mv $REPACK/ota/system/bin/logwrapper $REPACK/ota/system/bootmenu/binary/logwrapper.bin

cp -rf $ANDROID_BUILD_TOP/external/bootmenu/images $REPACK/ota/system/bootmenu/images

mkdir -p $REPACK/ota/system/bootmenu/ext/modules
	cp -f $MODULE_TOP/modules/cpufreq_*.ko $REPACK/ota/system/bootmenu/ext/modules
	cp -f $MODULE_TOP/modules/symsearch.ko $REPACK/ota/system/bootmenu/ext/modules
	cp -f $MODULE_TOP/modules/overclock.ko $REPACK/ota/system/bootmenu/ext/modules

mkdir -p $REPACK/ota/system/bootmenu/recovery/sbin
	cp -rfd $OUT/recovery/root/sbin/* $REPACK/ota/system/bootmenu/recovery/sbin
	find $REPACK/ota/system/bootmenu/recovery/sbin/ -type l -exec rm {} \; # remove symbolic links
mkdir -p $REPACK/ota/system/bootmenu/recovery/res
	cp -rf $OUT/recovery/root/res/* $REPACK/ota/system/bootmenu/recovery/res 
mkdir -p $REPACK/ota/system/bootmenu/recovery/etc
	cp -rf $OUT/recovery/root/etc/* $REPACK/ota/system/bootmenu/recovery/etc
	cp -f $OUT/recovery/root/etc/recovery.fstab $REPACK/ota/system/bootmenu/recovery/recovery.fstab
	cp -f $OUT/recovery/root/etc/recovery.fstab $REPACK/ota/system/bootmenu/recovery/etc/recovery.fstab

