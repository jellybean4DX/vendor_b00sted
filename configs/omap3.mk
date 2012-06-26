#
# OMAP3 makefile
# blobs common only to omap3 devices will be in here
# This is separate from the omap3.mk in device trees(for now)
#
# TO-DO:: Find a way to make the product/DEVICE/ be for the device 
# being built and not a set device in mk for the device omap3.mk 
#
# Copyright (C) 2011 The Android Open-Source Project
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
