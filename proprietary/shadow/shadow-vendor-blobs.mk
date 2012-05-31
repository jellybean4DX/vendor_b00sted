# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/motorola/shadow/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_PROPRIETARY := vendor/b00sted/proprietary/shadow/proprietary

PRODUCT_COPY_FILES := \
    $(PRODUCT_PROPRIETARY)/lib/libmoto_gps.so:obj/lib/libmoto_gps.so \
    $(PRODUCT_PROPRIETARY)/lib/libarcsoft.so:obj/lib/libarcsoft.so \
    $(PRODUCT_PROPRIETARY)/lib/liba2dp.so:obj/lib/liba2dp.so \
    $(PRODUCT_PROPRIETARY)/lib/libaudio.so:obj/lib/libaudio.so \
    $(PRODUCT_PROPRIETARY)/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
    $(PRODUCT_PROPRIETARY)/lib/libcamera.so:obj/lib/libcamera.so \
    $(PRODUCT_PROPRIETARY)/lib/libnmea.so:obj/lib/libnmea.so \
    $(PRODUCT_PROPRIETARY)/lib/libril_rds.so:obj/lib/libril_rds.so \
    $(PRODUCT_PROPRIETARY)/lib/librds_util.so:obj/lib/librds_util.so \
    $(PRODUCT_PROPRIETARY)/lib/libsmiledetect.so:obj/lib/libsmiledetect.so
# vendor/motorola/shadow/proprietary/lib/hw/gralloc.omap3.so:obj/lib/hw/gralloc.omap3.so

PRODUCT_COPY_FILES += \
    $(PRODUCT_PROPRIETARY)/app/ExtDispService.apk:/system/app/ExtDispService.apk \
    $(PRODUCT_PROPRIETARY)/app/PhoneConfig.apk:/system/app/PhoneConfig.apk \
    $(PRODUCT_PROPRIETARY)/app/ProgramMenu.apk:/system/app/ProgramMenu.apk \
    $(PRODUCT_PROPRIETARY)/app/ProgramMenuSystem.apk:/system/app/ProgramMenuSystem.apk \
    $(PRODUCT_PROPRIETARY)/app/Usb.apk:/system/app/Usb.apk 

# All the blobs necessary for shadow
PRODUCT_COPY_FILES += \
    $(PRODUCT_PROPRIETARY)/bin/akmd2:/system/bin/akmd2 \
    $(PRODUCT_PROPRIETARY)/bin/ap_gain.bin:/system/bin/ap_gain.bin \
    $(PRODUCT_PROPRIETARY)/bin/ap_gain_mmul.bin:/system/bin/ap_gain_mmul.bin \
    $(PRODUCT_PROPRIETARY)/bin/batch:/system/bin/batch \
    $(PRODUCT_PROPRIETARY)/bin/battd:/system/bin/battd \
    $(PRODUCT_PROPRIETARY)/bin/btcmd:/system/bin/btcmd \
    $(PRODUCT_PROPRIETARY)/bin/bthelp:/system/bin/bthelp \
    $(PRODUCT_PROPRIETARY)/bin/bttest_mot:/system/bin/bttest_mot \
    $(PRODUCT_PROPRIETARY)/bin/chat-ril:/system/bin/chat-ril \
    $(PRODUCT_PROPRIETARY)/bin/dbvc_atvc_property_set:/system/bin/dbvc_atvc_property_set \
    $(PRODUCT_PROPRIETARY)/bin/dmt:/system/bin/dmt \
    $(PRODUCT_PROPRIETARY)/bin/dund:/system/bin/dund \
    $(PRODUCT_PROPRIETARY)/bin/ecckeyd:/system/bin/ecckeyd \
    $(PRODUCT_PROPRIETARY)/bin/fdisk:/system/bin/fdisk \
    $(PRODUCT_PROPRIETARY)/bin/firewall.sh:/system/bin/firewall.sh \
    $(PRODUCT_PROPRIETARY)/bin/ftmipcd:/system/bin/ftmipcd \
    $(PRODUCT_PROPRIETARY)/bin/gkilogd:/system/bin/gkilogd \
    $(PRODUCT_PROPRIETARY)/bin/loadpreinstalls.sh:/system/bin/loadpreinstalls.sh \
    $(PRODUCT_PROPRIETARY)/bin/mdm_panicd:/system/bin/mdm_panicd \
    $(PRODUCT_PROPRIETARY)/bin/napics.sh:/system/bin/napics.sh \
    $(PRODUCT_PROPRIETARY)/bin/pppd:/system/bin/pppd \
    $(PRODUCT_PROPRIETARY)/bin/pppd-ril:/system/bin/pppd-ril \
    $(PRODUCT_PROPRIETARY)/bin/SaveBPVer:/system/bin/SaveBPVer \
    $(PRODUCT_PROPRIETARY)/bin/secclkd:/system/bin/secclkd \
    $(PRODUCT_PROPRIETARY)/bin/smc_pa_ctrl:/system/bin/smc_pa_ctrl \
    $(PRODUCT_PROPRIETARY)/bin/smoduled:/system/bin/smoduled \
    $(PRODUCT_PROPRIETARY)/bin/startup_smc.sh:/system/bin/startup_smc.sh \
    $(PRODUCT_PROPRIETARY)/bin/tcmd:/system/bin/tcmd \
    $(PRODUCT_PROPRIETARY)/bin/testpppd:/system/bin/testpppd \
    $(PRODUCT_PROPRIETARY)/bin/tstmetainfo:/system/bin/tstmetainfo \
    $(PRODUCT_PROPRIETARY)/bin/usbd:/system/bin/usbd \
    $(PRODUCT_PROPRIETARY)/etc/backup_targets.csv:/system/etc/backup_targets.csv \
    $(PRODUCT_PROPRIETARY)/etc/cameraCalFileDef5M.bin:/system/etc/cameraCalFileDef5M.bin \
    $(PRODUCT_PROPRIETARY)/etc/cameraCalFileDef8M.bin:/system/etc/cameraCalFileDef8M.bin \
    $(PRODUCT_PROPRIETARY)/etc/excluded-input-devices.xml:/system/etc/excluded-input-devices.xml \
    $(PRODUCT_PROPRIETARY)/etc/firmware/ap_bt_data.bin:/system/etc/firmware/ap_bt_data.bin \
    $(PRODUCT_PROPRIETARY)/etc/firmware/wl1271.bin:/system/etc/firmware/wl1271.bin \
    $(PRODUCT_PROPRIETARY)/etc/fm_rx_init_1273.2.bts:/system/etc/fm_rx_init_1273.2.bts \
    $(PRODUCT_PROPRIETARY)/etc/fm_rx_init_6450.2.bts:/system/etc/fm_rx_init_6450.2.bts \
    $(PRODUCT_PROPRIETARY)/etc/fmc_init_1273.2.bts:/system/etc/fmc_init_1273.2.bts \
    $(PRODUCT_PROPRIETARY)/etc/fmc_init_6450.2.bts:/system/etc/fmc_init_6450.2.bts \
    $(PRODUCT_PROPRIETARY)/etc/pppd-ril.options:/system/etc/ppp/peers/pppd-ril.options \
    $(PRODUCT_PROPRIETARY)/etc/mancacerts.zip:/system/etc/security/mancacerts.zip \
    $(PRODUCT_PROPRIETARY)/etc/oprcacerts.zip:/system/etc/security/oprcacerts.zip \
    $(PRODUCT_PROPRIETARY)/etc/suplcerts.bks:/system/etc/security/suplcerts.bks \
    $(PRODUCT_PROPRIETARY)/etc/smc_android_cfg.ini:/system/etc/smc_android_cfg.ini \
    $(PRODUCT_PROPRIETARY)/etc/smc_android_cfg_256.ini:/system/etc/smc_android_cfg_256.ini \
    $(PRODUCT_PROPRIETARY)/etc/smc_pa.ift:/system/etc/smc_pa.ift \
    $(PRODUCT_PROPRIETARY)/etc/smc_pa_pk_4_ipa.bin:/system/etc/smc_pa_pk_4_ipa.bin \
    $(PRODUCT_PROPRIETARY)/etc/supportedlocales.conf:/system/etc/supportedlocales.conf \
    $(PRODUCT_PROPRIETARY)/etc/vzwpubagps.cer:/system/etc/vzwpubagps.cer \
    $(PRODUCT_PROPRIETARY)/etc/wifi/fw_tiwlan_ap.bin:/system/etc/wifi/fw_tiwlan_ap.bin \
    $(PRODUCT_PROPRIETARY)/etc/wifi/fw_wlan1271.bin:/system/etc/wifi/fw_wlan1271.bin \
    $(PRODUCT_PROPRIETARY)/etc/wifi/hostapd.conf.templet:/system/etc/wifi/hostapd.conf.templet \
    $(PRODUCT_PROPRIETARY)/etc/wifi/tiwlan.ini:/system/etc/wifi/tiwlan.ini \
    $(PRODUCT_PROPRIETARY)/etc/wifi/tiwlan_ap.ini:/system/etc/wifi/tiwlan_ap.ini \
    $(PRODUCT_PROPRIETARY)/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    $(PRODUCT_PROPRIETARY)/etc/permissions/platform.xml:/system/etc/permissions/platform.xml \
    $(PRODUCT_PROPRIETARY)/etc/permissions/com.motorola.android.iextdispservice.xml:/system/etc/permissions/com.motorola.android.iextdispservice.xml \
    $(PRODUCT_PROPRIETARY)/etc/permissions/com.motorola.android.nativehdmiapis_v1.xml:/system/etc/permissions/com.motorola.android.nativehdmiapis_v1.xml \
    $(PRODUCT_PROPRIETARY)/framework/com.motorola.android.iextdispservice.jar:/system/framework/com.motorola.android.iextdispservice.jar \
    $(PRODUCT_PROPRIETARY)/framework/com.motorola.android.nativehdmiapis_v1.jar:/system/framework/com.motorola.android.nativehdmiapis_v1.jar \
    $(PRODUCT_PROPRIETARY)/lib/dsp/baseimage.dof:/system/lib/dsp/baseimage.dof \
    $(PRODUCT_PROPRIETARY)/lib/dsp/conversions.dll64P:/system/lib/dsp/conversions.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/h264vdec_sn.dll64P:/system/lib/dsp/h264vdec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/h264venc_sn.dll64P:/system/lib/dsp/h264venc_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/720p_h264vdec_sn.dll64P:/system/lib/dsp/720p_h264vdec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/720p_h264venc_sn.dll64P:/system/lib/dsp/720p_h264venc_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/jpegenc_sn.dll64P:/system/lib/dsp/jpegenc_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/m4venc_sn.dll64P:/system/lib/dsp/m4venc_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/m4venc_sn.dll64P:/system/lib/dsp/720p_m4venc_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/mp3dec_sn.dll64P:/system/lib/dsp/mp3dec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/mp4vdec_sn.dll64P:/system/lib/dsp/mp4vdec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/mp4vdec_sn.dll64P:/system/lib/dsp/720p_mp4vdec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/mpeg4aacdec_sn.dll64P:/system/lib/dsp/mpeg4aacdec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/mpeg4aacenc_sn.dll64P:/system/lib/dsp/mpeg4aacenc_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/nbamrdec_sn.dll64P:/system/lib/dsp/nbamrdec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/nbamrenc_sn.dll64P:/system/lib/dsp/nbamrenc_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/postprocessor_dualout.dll64P:/system/lib/dsp/postprocessor_dualout.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/ringio.dll64P:/system/lib/dsp/ringio.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/usn.dll64P:/system/lib/dsp/usn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/wbamrdec_sn.dll64P:/system/lib/dsp/wbamrdec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/wbamrenc_sn.dll64P:/system/lib/dsp/wbamrenc_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/wmadec_sn.dll64P:/system/lib/dsp/wmadec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/dsp/wmv9dec_sn.dll64P:/system/lib/dsp/wmv9dec_sn.dll64P \
    $(PRODUCT_PROPRIETARY)/lib/libWifiAPHardware.so:/system/lib/libWifiAPHardware.so \
    $(PRODUCT_PROPRIETARY)/lib/libarcsoftpe.so:/system/lib/libarcsoftpe.so \
    $(PRODUCT_PROPRIETARY)/lib/libarcsoft.so:/system/lib/libarcsoft.so \
    $(PRODUCT_PROPRIETARY)/lib/libbattd.so:/system/lib/libbattd.so \
    $(PRODUCT_PROPRIETARY)/lib/libcaps.so:/system/lib/libcaps.so \
    $(PRODUCT_PROPRIETARY)/lib/libcryptoki.so:/system/lib/libcryptoki.so \
    $(PRODUCT_PROPRIETARY)/lib/libdmengine.so:/system/lib/libdmengine.so \
    $(PRODUCT_PROPRIETARY)/lib/libdmjavaplugin.so:/system/lib/libdmjavaplugin.so \
    $(PRODUCT_PROPRIETARY)/lib/libextdisp.so:/system/lib/libextdisp.so \
    $(PRODUCT_PROPRIETARY)/lib/libglslcompiler.so:/system/lib/libglslcompiler.so \
    $(PRODUCT_PROPRIETARY)/lib/libhdmi.so:/system/lib/libhdmi.so \
    $(PRODUCT_PROPRIETARY)/lib/libhostapd_client.so:/system/lib/libhostapd_client.so \
    $(PRODUCT_PROPRIETARY)/lib/libimage_jni.so:/system/lib/libimage_jni.so \
    $(PRODUCT_PROPRIETARY)/lib/libjanus.so:/system/lib/libjanus.so \
    $(PRODUCT_PROPRIETARY)/lib/libjanus_jni.so:/system/lib/libjanus_jni.so \
    $(PRODUCT_PROPRIETARY)/lib/libmediaext.so:/system/lib/libmediaext.so \
    $(PRODUCT_PROPRIETARY)/lib/libmetainfo.so:/system/lib/libmetainfo.so \
    $(PRODUCT_PROPRIETARY)/lib/libmot_atcmd.so:/system/lib/libmot_atcmd.so \
    $(PRODUCT_PROPRIETARY)/lib/libmot_atcmd_mflex.so:/system/lib/libmot_atcmd_mflex.so \
    $(PRODUCT_PROPRIETARY)/lib/libmot_bluetooth_jni.so:/system/lib/libmot_bluetooth_jni.so \
    $(PRODUCT_PROPRIETARY)/lib/libmot_btpan_jni.so:/system/lib/libmot_btpan_jni.so \
    $(PRODUCT_PROPRIETARY)/lib/libmot_led.so:/system/lib/libmot_led.so \
    $(PRODUCT_PROPRIETARY)/lib/libmotdrm1.so:/system/lib/libmotdrm1.so \
    $(PRODUCT_PROPRIETARY)/lib/libmotdrm1_jni.so:/system/lib/libmotdrm1_jni.so \
    $(PRODUCT_PROPRIETARY)/lib/libmoto_gps.so:/system/lib/libmoto_gps.so \
    $(PRODUCT_PROPRIETARY)/lib/libmoto_netutil.so:/system/lib/libmoto_netutil.so \
    $(PRODUCT_PROPRIETARY)/lib/libmoto_ril.so:/system/lib/libmoto_ril.so \
    $(PRODUCT_PROPRIETARY)/lib/libmotodbgutils.so:/system/lib/libmotodbgutils.so \
    $(PRODUCT_PROPRIETARY)/lib/libmtp_jni.so:/system/lib/libmtp_jni.so \
    $(PRODUCT_PROPRIETARY)/lib/libmtpstack.so:/system/lib/libmtpstack.so \
    $(PRODUCT_PROPRIETARY)/lib/libnativedrm1.so:/system/lib/libnativedrm1.so \
    $(PRODUCT_PROPRIETARY)/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    $(PRODUCT_PROPRIETARY)/lib/libpanorama.so:/system/lib/libpanorama.so \
    $(PRODUCT_PROPRIETARY)/lib/libpanorama_jni.so:/system/lib/libpanorama_jni.so \
    $(PRODUCT_PROPRIETARY)/lib/libpkip.so:/system/lib/libpkip.so \
    $(PRODUCT_PROPRIETARY)/lib/libpppd_plugin.so:/system/lib/libpppd_plugin.so \
    $(PRODUCT_PROPRIETARY)/lib/libprojectM.so:/system/lib/libprojectM.so \
    $(PRODUCT_PROPRIETARY)/lib/libprovlib.so:/system/lib/libprovlib.so \
    $(PRODUCT_PROPRIETARY)/lib/libscalado.so:/system/lib/libscalado.so \
    $(PRODUCT_PROPRIETARY)/lib/libsmapi.so:/system/lib/libsmapi.so \
    $(PRODUCT_PROPRIETARY)/lib/libssmgr.so:/system/lib/libssmgr.so \
    $(PRODUCT_PROPRIETARY)/lib/libtpa.so:/system/lib/libtpa.so \
    $(PRODUCT_PROPRIETARY)/lib/libtpa_core.so:/system/lib/libtpa_core.so \
    $(PRODUCT_PROPRIETARY)/lib/libui3d.so:/system/lib/libui3d.so \
    $(PRODUCT_PROPRIETARY)/lib/libvideoeditorlite.so:/system/lib/libvideoeditorlite.so \
    $(PRODUCT_PROPRIETARY)/lib/libwbxmlparser.so:/system/lib/libwbxmlparser.so \
    $(PRODUCT_PROPRIETARY)/tts/lang_pico/en-US_lh0_sg.bin:/system/tts/lang_pico/en-US_lh0_sg.bin \
    $(PRODUCT_PROPRIETARY)/tts/lang_pico/en-US_ta.bin:/system/tts/lang_pico/en-US_ta.bin \
    $(PRODUCT_PROPRIETARY)/tts/lang_pico/es-ES_ta.bin:/system/tts/lang_pico/es-ES_ta.bin \
    $(PRODUCT_PROPRIETARY)/tts/lang_pico/es-ES_zl0_sg.bin:/system/tts/lang_pico/es-ES_zl0_sg.bin \
    $(PRODUCT_PROPRIETARY)/xbin/backup:/system/xbin/backup \
    $(PRODUCT_PROPRIETARY)/xbin/drm1_func_test:/system/xbin/drm1_func_test \
    $(PRODUCT_PROPRIETARY)/xbin/run_backup:/system/xbin/run_backup \
    $(PRODUCT_PROPRIETARY)/xbin/run_restore:/system/xbin/run_restore \
    $(PRODUCT_PROPRIETARY)/xbin/ssmgrd:/system/xbin/ssmgrd \
    $(PRODUCT_PROPRIETARY)/lib/libaudio.so:/system/lib/libaudio.so \
    $(PRODUCT_PROPRIETARY)/lib/libcamera.so:/system/lib/libcamera.so \
    $(PRODUCT_PROPRIETARY)/lib/libnmea.so:/system/lib/libnmea.so \
    $(PRODUCT_PROPRIETARY)/lib/libril_rds.so:/system/lib/libril_rds.so \
    $(PRODUCT_PROPRIETARY)/lib/librds_util.so:/system/lib/librds_util.so \
    $(PRODUCT_PROPRIETARY)/lib/libsmiledetect.so:/system/lib/libsmiledetect.so \
    $(PRODUCT_PROPRIETARY)/lib/libbridge.so:/system/lib/libbridge.so \
    $(PRODUCT_PROPRIETARY)/lib/libpppd_plugin-ril.so:/system/lib/libpppd_plugin-ril.so \
    $(PRODUCT_PROPRIETARY)/lib/libusc.so:/system/lib/libusc.so \
    $(PRODUCT_PROPRIETARY)/lib/hw/sensors.shadow.so:/system/lib/hw/sensors.shadow.so \
    $(PRODUCT_PROPRIETARY)/lib/hw/gps.shadow.so:/system/lib/hw/gps.shadow.so



