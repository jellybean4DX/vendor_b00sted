#
# bootmenu makefile
#
# Copyright (C) 2012 BMc08GT
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
COMMON_BOOTMENU := vendor/b00sted/prebuilt/common/bootmenu/common


#BootMenu files
PRODUCT_COPY_FILES += \
        $(COMMON_PREBUILT)/bin/hijack:system/bin/hijack \
        $(COMMON_PREBUILT)/bin/adbd:system/bin/adbd \
        $(COMMON_BOOTMENU)/binary/adbd:/system/bootmenu/binary/adbd \
        $(COMMON_BOOTMENU)/binary/adbd.root:/system/bootmenu/binary/adbd.root \
        $(COMMON_BOOTMENU)/binary/busybox:/system/bootmenu/binary/busybox \
        $(COMMON_BOOTMENU)/binary/lsof:/system/bootmenu/binary/lsof \
        $(COMMON_BOOTMENU)/binary/recovery:/system/bootmenu/binary/recovery \
        $(COMMON_BOOTMENU)/config/nvs_map_commands.txt:/system/bootmenu/config/nvs_map_commands.txt \
        $(COMMON_BOOTMENU)/config/overclock.conf:/system/bootmenu/config/overclock.conf \
        $(COMMON_BOOTMENU)/fixes/09multitouch-2pt:/system/bootmenu/fixes/09multitouch-2pt \
        $(COMMON_BOOTMENU)/fixes/09multitouch-8pt:/system/bootmenu/fixes/09multitouch-8pt \
        $(COMMON_BOOTMENU)/images/background.png:/system/bootmenu/images/background.png \
        $(COMMON_BOOTMENU)/images/indeterminate1.png:/system/bootmenu/images/indeterminate1.png \
        $(COMMON_BOOTMENU)/images/indeterminate2.png:/system/bootmenu/images/indeterminate2.png \
        $(COMMON_BOOTMENU)/images/indeterminate3.png:/system/bootmenu/images/indeterminate3.png \
        $(COMMON_BOOTMENU)/images/indeterminate4.png:/system/bootmenu/images/indeterminate4.png \
        $(COMMON_BOOTMENU)/images/indeterminate5.png:/system/bootmenu/images/indeterminate5.png \
        $(COMMON_BOOTMENU)/images/indeterminate6.png:/system/bootmenu/images/indeterminate6.png \
        $(COMMON_BOOTMENU)/images/progress_empty.png:/system/bootmenu/images/progress_empty.png \
        $(COMMON_BOOTMENU)/images/progress_fill.png:/system/bootmenu/images/progress_fill.png \
        $(COMMON_BOOTMENU)/script/adbd.sh:/system/bootmenu/script/adbd.sh \
        $(COMMON_BOOTMENU)/script/cdrom.sh:/system/bootmenu/script/cdrom.sh \
        $(COMMON_BOOTMENU)/script/_config.sh:/system/bootmenu/script/_config.sh \
        $(COMMON_BOOTMENU)/script/data.sh:/system/bootmenu/script/data.sh \
        $(COMMON_BOOTMENU)/script/file_replace.sh:/system/bootmenu/script/file_replace.sh \
        $(COMMON_BOOTMENU)/script/fix_hijack_boot.sh:/system/bootmenu/script/fix_hijack_boot.sh \
        $(COMMON_BOOTMENU)/script/fix_recovery.sh:/system/bootmenu/script/fix_recovery.sh \
        $(COMMON_BOOTMENU)/script/fix_touch_2pt.sh:/system/bootmenu/script/fix_touch_2pt.sh \
        $(COMMON_BOOTMENU)/script/fix_touch_8pt.sh:/system/bootmenu/script/fix_touch_8pt.sh \
        $(COMMON_BOOTMENU)/script/nvs_map_creation.sh:/system/bootmenu/script/nvs_map_creation.sh \
        $(COMMON_BOOTMENU)/script/overclock.sh:/system/bootmenu/script/overclock.sh \
        $(COMMON_BOOTMENU)/script/overclock_backup.sh:/system/bootmenu/script/overclock_backup.sh \
        $(COMMON_BOOTMENU)/script/overclock_restore.sh:/system/bootmenu/script/overclock_restore.sh \
        $(COMMON_BOOTMENU)/script/pre_bootmenu.sh:system/bootmenu/script/pre_bootmenu.sh \
        $(COMMON_BOOTMENU)/script/reboot_bootmenu.sh:/system/bootmenu/script/reboot_bootmenu.sh \
        $(COMMON_BOOTMENU)/script/reboot_cwr.sh:/system/bootmenu/script/reboot_cwr.sh \
        $(COMMON_BOOTMENU)/script/reboot_rzr.sh:system/bootmenu/script/reboot_rzr.sh \
        $(COMMON_BOOTMENU)/script/recovery_cwr.sh:/system/bootmenu/script/recovery_cwr.sh \
        $(COMMON_BOOTMENU)/script/recovery_rzr.sh:/system/bootmenu/script/recovery_rzr.sh \
        $(COMMON_BOOTMENU)/script/sdcard.sh:/system/bootmenu/script/sdcard.sh \
        $(COMMON_BOOTMENU)/script/system.sh:/system/bootmenu/script/system.sh 

#BOOTMENU modules || common
PRODUCT_COPY_FILES += $(shell \
    find $(COMMON_PREBUILT)/bootmenu/common/lib/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')
