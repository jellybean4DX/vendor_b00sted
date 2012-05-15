# Copyright (C) 2010 The Android Open Source Project
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

# All the blobs necessary for inc
PRODUCT_PROPRIETARY := vendor/b00sted/proprietary/htc_inc/proprietary

PRODUCT_COPY_FILES += \
    $(PRODUCT_PROPRIETARY)/akmd:/system/bin/akmd \
    $(PRODUCT_PROPRIETARY)/snd:/system/bin/snd \
    $(PRODUCT_PROPRIETARY)/snd8k:/system/bin/snd8k \
    $(PRODUCT_PROPRIETARY)/sound8k:/system/bin/sound8k \
    $(PRODUCT_PROPRIETARY)/spkamp:/system/bin/spkamp \
    $(PRODUCT_PROPRIETARY)/wifitools:/system/bin/wifitools \
    $(PRODUCT_PROPRIETARY)/AdieHWCodecSetting.csv:/system/etc/AdieHWCodecSetting.csv \
    $(PRODUCT_PROPRIETARY)/AudioBTID.csv:/system/etc/AudioBTID.csv \
    $(PRODUCT_PROPRIETARY)/TPA2018.csv:/system/etc/TPA2018.csv \
    $(PRODUCT_PROPRIETARY)/WPDB.zip:/system/etc/WPDB.zip \
    $(PRODUCT_PROPRIETARY)/Incredible_C_20100310_VZW_Neo_324016_v4_PMIC.acdb:/system/etc/firmware/Incredible_C_20100310_VZW_Neo_324016_v4_PMIC.acdb \
    $(PRODUCT_PROPRIETARY)/Incredible_C_20100319_VZW_Neo_324016_v5_VZW.acdb:/system/etc/firmware/Incredible_C_20100319_VZW_Neo_324016_v5_VZW.acdb \
    $(PRODUCT_PROPRIETARY)/default.acdb:/system/etc/firmware/default.acdb \
    $(PRODUCT_PROPRIETARY)/default_PMIC.acdb:/system/etc/firmware/default_PMIC.acdb \
    $(PRODUCT_PROPRIETARY)/default_VZW.acdb:/system/etc/firmware/default_VZW.acdb \
    $(PRODUCT_PROPRIETARY)/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    $(PRODUCT_PROPRIETARY)/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \
    $(PRODUCT_PROPRIETARY)/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    $(PRODUCT_PROPRIETARY)/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    $(PRODUCT_PROPRIETARY)/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    $(PRODUCT_PROPRIETARY)/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    $(PRODUCT_PROPRIETARY)/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    $(PRODUCT_PROPRIETARY)/libsc-a2xx.so:/system/lib/libsc-a2xx.so \
    $(PRODUCT_PROPRIETARY)/libOmxVdec.so:/system/lib/libOmxVdec.so \
    $(PRODUCT_PROPRIETARY)/libgsl.so:/system/lib/libgsl.so \
    $(PRODUCT_PROPRIETARY)/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \
    $(PRODUCT_PROPRIETARY)/libhtc_ril.so:/system/lib/libhtc_ril.so \
    $(PRODUCT_PROPRIETARY)/liboemcamera.so:/system/lib/liboemcamera.so \
    $(PRODUCT_PROPRIETARY)/Incredible_C_20100921_VZW_Neo_324016_v10_default.acdb:/system/etc/firmware/Incredible_C_20100921_VZW_Neo_324016_v10_default.acdb
