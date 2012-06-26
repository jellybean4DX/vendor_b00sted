#
# Copyright (C) 2012 BMc08GT
#
# OMAP3 Device Configs
#
# To be listed in each applicable OMAP3 device tree so that
# OMAP34COM device.mk can call this for omap-zoom base
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

# This file includes all definitions that apply to ALL omap3 devices, and
# are also specific to omap devices
#
# Everything in this directory will become public

OMAP3_PREBUILT := vendor/b00sted/prebuilt/omap3
PRODUCT_PACKAGE_OVERLAYS += vendor/b00sted/overlay/frameworks

# Common Blobs
# test mms if working from source now
#$(OMAP3_PREBUILT)/app/Mms.apk:system/app/Mms.apk 
PRODUCT_COPY_FILES += \
    $(OMAP3_PREBUILT)/app/FMRadio.apk:system/app/FMRadio.apk \
    $(OMAP3_PREBUILT)/app/FMRadioService.apk:system/app/FMRadioService.apk \
    $(OMAP3_PREBUILT)/bin/fmradioserver:system/bin/fmradioserver \
    $(OMAP3_PREBUILT)/etc/init.d/97lagfix:system/etc/init.d/97lagfix \
    $(OMAP3_PREBUILT)/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(OMAP3_PREBUILT)/lib/libFMRadio.so:system/lib/libFMRadio.so \
    $(OMAP3_PREBUILT)/lib/libfmradio_jni.so:system/lib/libfmradio_jni.so \
    $(OMAP3_PREBUILT)/lib/libfmradioplayer.so:system/lib/libfmradioplayer.so \
    $(OMAP3_PREBUILT)/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(OMAP3_PREBUILT)/usr/keylayout/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl

# Hardware composer configuration
ifeq ($(PRODUCT_DEVICE), shadow)
PRODUCT_COPY_FILES += \
        out/target/product/shadow/obj/lib/hwcomposer.omap3.so:system/vendor/lib/hw/hwcomposer.omap3.so \
        out/target/product/shadow/obj/lib/hwcomposer.omap3.so:system/lib/hw/hwcomposer.omap3.so
endif

 

$(call inherit-product, hardware/ti/omap3/omap3.mk)



