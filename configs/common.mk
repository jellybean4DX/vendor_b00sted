#
# Attempt at common b00stedICS vendor repo
# All things common to bICS will be placed here and made public
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


#Common
# general for now // will be merged to common once ported from DX
PRODUCT_PACKAGE_OVERLAYS += vendor/b00sted/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/b00sted/overlay/dictionaries
COMMON_PREBUILT := vendor/b00sted/prebuilt



#Grab the CM packages // For now
PRODUCT_PACKAGES += \
    Development \
    LatinIME \
    SpareParts \
    Superuser \
    Superuser.apk \
    su \
    audio_effects.conf

# Optional packages
PRODUCT_PACKAGES += \
    MusicFX \
    FileManager \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    openvpn

#Common Blobs 
PRODUCT_COPY_FILES += \
    $(COMMON_PREBUILT)/app/Superuser.apk:system/app/Superuser.apk \
    $(COMMON_PREBUILT)/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    $(COMMON_PREBUILT)/app/ApexLauncher_v1.1.0.apk:system/app/ApexLauncher_v1.1.0.apk \
    $(COMMON_PREBUILT)/app/FMRadio.apk:system/app/FMRadio.apk \
    $(COMMON_PREBUILT)/app/FMRadioService.apk:system/app/FMRadioService.apk \
    $(COMMON_PREBUILT)/bin/fmradioserver:system/bin/fmradioserver \
    $(COMMON_PREBUILT)/etc/apns-conf.xml:system/etc/apns-conf.xml \
    $(COMMON_PREBUILT)/etc/resolv.conf:system/etc/resolv.conf \
    $(COMMON_PREBUILT)/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(COMMON_PREBUILT)/etc/sysctl.conf:system/etc/sysctl.conf \
    $(COMMON_PREBUILT)/etc/init.d/97lagfix:system/etc/init.d/97lagfix \
    $(COMMON_PREBUILT)/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    $(COMMON_PREBUILT)/lib/libFMRadio.so:system/lib/libFMRadio.so \
    $(COMMON_PREBUILT)/lib/libfmradio_jni.so:system/lib/libfmradio_jni.so \
    $(COMMON_PREBUILT)/lib/libfmradioplayer.so:system/lib/libfmradioplayer.so \
    $(COMMON_PREBUILT)/media/bootanimation.zip:system/media/bootanimation.zip \
    $(COMMON_PREBUILT)/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(COMMON_PREBUILT)/usr/keylayout/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl

#Audio Enhancement
PRODUCT_COPY_FILES += \
	$(COMMON_PREBUILT)/bin/basimage_ibeats.bin:system/bin/basimage_ibeats.bin \
	$(COMMON_PREBUILT)/bin/basimage_ibeats_solo.bin:system/bin/basimage_ibeats_solo.bin \
	$(COMMON_PREBUILT)/bin/basimage_ibeats_solo_x.bin:system/bin/basimage_ibeats_solo_x.bin \
	$(COMMON_PREBUILT)/bin/basimage_ibeats_x.bin:system/bin/basimage_ibeats_x.bin \
	$(COMMON_PREBUILT)/bin/dynimage_ibeats.bin:system/bin/dynimage_ibeats.bin \
	$(COMMON_PREBUILT)/bin/dynimage_ibeats_solo.bin:system/bin/dynimage_ibeats_solo.bin \
	$(COMMON_PREBUILT)/bin/dynimage_ibeats_solo_x.bin:system/bin/dynimage_ibeats_solo_x.bin \
	$(COMMON_PREBUILT)/bin/dynimage_ibeats_x.bin:system/bin/dynimage_ibeats_x.bin \
	$(COMMON_PREBUILT)/bin/peqimage_ibeats.bin:system/bin/peqimage_ibeats.bin \
	$(COMMON_PREBUILT)/bin/peqimage_ibeats_solo.bin:system/bin/peqimage_ibeats_solo.bin \
	$(COMMON_PREBUILT)/bin/peqimage_ibeats_solo_x.bin:system/bin/peqimage_ibeats_solo_x.bin \
	$(COMMON_PREBUILT)/bin/peqimage_ibeats_x.bin:system/bin/peqimage_ibeats_x.bin \
	$(COMMON_PREBUILT)/bin/sound8x60:system/bin/sound8x60 \
	$(COMMON_PREBUILT)/etc/audio/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
	$(COMMON_PREBUILT)/etc/audio/eqfilter.txt:system/etc/audio/eqfilter.txt \
	$(COMMON_PREBUILT)/etc/audio/lmfilter.txt:system/etc/audio/lmfilter.txt \
	$(COMMON_PREBUILT)/etc/audio/situation.txt:system/etc/audio/situation.txt \
	$(COMMON_PREBUILT)/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
	$(COMMON_PREBUILT)/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
	$(COMMON_PREBUILT)/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
	$(COMMON_PREBUILT)/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
	$(COMMON_PREBUILT)/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
	$(COMMON_PREBUILT)/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
	$(COMMON_PREBUILT)/etc/AudioFilterPlatform.csv:system/etc/AudioFilterPlatform.csv \
	$(COMMON_PREBUILT)/etc/AudioFilterProduct.csv:system/etc/AudioFilterProduct.csv \
	$(COMMON_PREBUILT)/etc/basimage_gec.bin:system/etc/basimage_gec.bin \
	$(COMMON_PREBUILT)/etc/basimage_gec_x.bin:system/etc/basimage_gec_x.bin \
	$(COMMON_PREBUILT)/etc/basimage_ibeats.bin:system/etc/basimage_ibeats.bin \
	$(COMMON_PREBUILT)/etc/basimage_ibeats_solo.bin:system/etc/basimage_ibeats_solo.bin \
	$(COMMON_PREBUILT)/etc/basimage_ibeats_solo_x.bin:system/etc/basimage_ibeats_solo_x.bin \
	$(COMMON_PREBUILT)/etc/basimage_ibeats_x.bin:system/etc/basimage_ibeats_x.bin \
	$(COMMON_PREBUILT)/etc/dynimage_gec.bin:system/etc/dynimage_gec.bin \
	$(COMMON_PREBUILT)/etc/dynimage_gec_x.bin:system/etc/dynimage_gec_x.bin \
	$(COMMON_PREBUILT)/etc/dynimage_ibeats.bin:system/etc/dynimage_ibeats.bin \
	$(COMMON_PREBUILT)/etc/dynimage_ibeats_solo.bin:system/etc/dynimage_ibeats_solo.bin \
	$(COMMON_PREBUILT)/etc/dynimage_ibeats_solo_x.bin:system/etc/dynimage_ibeats_solo_x.bin \
	$(COMMON_PREBUILT)/etc/dynimage_ibeats_x.bin:system/etc/dynimage_ibeats_x.bin \
	$(COMMON_PREBUILT)/etc/eqfilter.txt:system/etc/eqfilter.txt \
	$(COMMON_PREBUILT)/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
	$(COMMON_PREBUILT)/etc/peqimage_gec.bin:system/etc/peqimage_gec.bin \
	$(COMMON_PREBUILT)/etc/peqimage_gec_x.bin:system/etc/peqimage_gec_x.bin \
	$(COMMON_PREBUILT)/etc/peqimage_ibeats.bin:system/etc/peqimage_ibeats.bin \
	$(COMMON_PREBUILT)/etc/peqimage_ibeats_solo.bin:system/etc/peqimage_ibeats_solo.bin \
	$(COMMON_PREBUILT)/etc/peqimage_ibeats_solo_x.bin:system/etc/peqimage_ibeats_solo_x.bin \
	$(COMMON_PREBUILT)/etc/peqimage_ibeats_x.bin:system/etc/peqimage_ibeats_x.bin \
	$(COMMON_PREBUILT)/etc/pvplayer.cfg:system/etc/pvplayer.cfg \
	$(COMMON_PREBUILT)/etc/soundbooster.txt:system/etc/soundbooster.txt \
	$(COMMON_PREBUILT)/etc/Sound_Original.txt:system/etc/Sound_Original.txt \
	$(COMMON_PREBUILT)/etc/srsfx_trumedia_51.cfg:system/etc/srsfx_trumedia_51.cfg \
	$(COMMON_PREBUILT)/etc/srsfx_trumedia_movie.cfg:system/etc/srsfx_trumedia_movie.cfg \
	$(COMMON_PREBUILT)/etc/srsfx_trumedia_music.cfg:system/etc/srsfx_trumedia_music.cfg \
	$(COMMON_PREBUILT)/etc/srsfx_trumedia_music_wide.cfg:system/etc/srsfx_trumedia_music_wide.cfg \
	$(COMMON_PREBUILT)/etc/srsfx_trumedia_voice.cfg:system/etc/srsfx_trumedia_voice.cfg \
	$(COMMON_PREBUILT)/etc/srs_geq10.cfg:system/etc/srs_gec10.cfg \
	$(COMMON_PREBUILT)/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
	$(COMMON_PREBUILT)/lib/libaudioeq.so:system/lib/libaudioeq.so \
	$(COMMON_PREBUILT)/lib/libAudioTrimmer.so:system/lib/libAudioTrimmer.so \
	$(COMMON_PREBUILT)/lib/libbeatsbass.so:system/lib/libbeatsbass.so \
	$(COMMON_PREBUILT)/lib/libbundlewrapper.so:system/lib/libbundlewrapper.so \
	$(COMMON_PREBUILT)/lib/libcyanogen-dsp.so:system/lib/libcyanogen-dsp.so \
	$(COMMON_PREBUILT)/lib/libreverbwrapper.so:system/lib/libreverbwrapper.so \
	$(COMMON_PREBUILT)/lib/libsrsfx.so:system/lib/libsrsfx.so \
	$(COMMON_PREBUILT)/lib/libvisualizer.so:system/lib/libvisualizer.so \
	$(COMMON_PREBUILT)/lib/libxloudwrapper.so:system/lib/libxloudwrapper.so 

#Bootmenu modules 
PRODUCT_COPY_FILES += $(shell \
  find $(COMMON_PREBUILT)/lib/modules -name '*.ko' \
  | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
  | tr '\n' ' ')


#BootMenu files
PRODUCT_COPY_FILES += \
	$(COMMON_PREBUILT)/bin/hijack:system/bin/hijack \
	$(COMMON_PREBUILT)/bootmenu/binary/adbd:/system/bootmenu/binary/adbd \
	$(COMMON_PREBUILT)/bootmenu/binary/adbd.root:/system/bootmenu/binary/adbd.root \
	$(COMMON_PREBUILT)/bootmenu/binary/busybox:/system/bootmenu/binary/busybox \
	$(COMMON_PREBUILT)/bootmenu/binary/lsof:/system/bootmenu/binary/lsof \
	$(COMMON_PREBUILT)/bootmenu/binary/recovery:/system/bootmenu/binary/recovery \
	$(COMMON_PREBUILT)/bootmenu/config/nvs_map_commands.txt:/system/bootmenu/config/nvs_map_commands.txt \
	$(COMMON_PREBUILT)/bootmenu/config/overclock.conf:/system/bootmenu/config/overclock.conf \
	$(COMMON_PREBUILT)/bootmenu/fixes/09multitouch-2pt:/system/bootmenu/fixes/09multitouch-2pt \
	$(COMMON_PREBUILT)/bootmenu/fixes/09multitouch-8pt:/system/bootmenu/fixes/09multitouch-8pt \
	$(COMMON_PREBUILT)/bootmenu/images/background.png:/system/bootmenu/images/background.png \
	$(COMMON_PREBUILT)/bootmenu/images/indeterminate1.png:/system/bootmenu/images/indeterminate1.png \
	$(COMMON_PREBUILT)/bootmenu/images/indeterminate2.png:/system/bootmenu/images/indeterminate2.png \
	$(COMMON_PREBUILT)/bootmenu/images/indeterminate3.png:/system/bootmenu/images/indeterminate3.png \
	$(COMMON_PREBUILT)/bootmenu/images/indeterminate4.png:/system/bootmenu/images/indeterminate4.png \
	$(COMMON_PREBUILT)/bootmenu/images/indeterminate5.png:/system/bootmenu/images/indeterminate5.png \
	$(COMMON_PREBUILT)/bootmenu/images/indeterminate6.png:/system/bootmenu/images/indeterminate6.png \
	$(COMMON_PREBUILT)/bootmenu/images/progress_empty.png:/system/bootmenu/images/progress_empty.png \
	$(COMMON_PREBUILT)/bootmenu/images/progress_fill.png:/system/bootmenu/images/progress_fill.png \
	$(COMMON_PREBUILT)/bootmenu/recovery/cwm-recovery.zip:/system/bootmenu/recovery/cwm-recovery.zip \
	$(COMMON_PREBUILT)/bootmenu/recovery/recovery.zip:/system/bootmenu/recovery/recovery.zip \
	$(COMMON_PREBUILT)/bootmenu/recovery/rzr-recovery.zip:/system/bootmenu/recovery/rzr-recovery.zip \
	$(COMMON_PREBUILT)/bootmenu/recovery/update-binary:/system/bootmenu/recovery/update-binary \
	$(COMMON_PREBUILT)/bootmenu/script/adbd.sh:/system/bootmenu/script/adbd.sh \
	$(COMMON_PREBUILT)/bootmenu/script/cdrom.sh:/system/bootmenu/script/cdrom.sh \
	$(COMMON_PREBUILT)/bootmenu/script/_config.sh:/system/bootmenu/script/_config.sh \
	$(COMMON_PREBUILT)/bootmenu/script/data.sh:/system/bootmenu/script/data.sh \
	$(COMMON_PREBUILT)/bootmenu/script/file_replace.sh:/system/bootmenu/script/file_replace.sh \
	$(COMMON_PREBUILT)/bootmenu/script/fix_hijack_boot.sh:/system/bootmenu/script/fix_hijack_boot.sh \
	$(COMMON_PREBUILT)/bootmenu/script/fix_recovery.sh:/system/bootmenu/script/fix_recovery.sh \
	$(COMMON_PREBUILT)/bootmenu/script/fix_touch_2pt.sh:/system/bootmenu/script/fix_touch_2pt.sh \
	$(COMMON_PREBUILT)/bootmenu/script/fix_touch_8pt.sh:/system/bootmenu/script/fix_touch_8pt.sh \
	$(COMMON_PREBUILT)/bootmenu/script/nvs_map_creation.sh:/system/bootmenu/script/nvs_map_creation.sh \
	$(COMMON_PREBUILT)/bootmenu/script/overclock.sh:/system/bootmenu/script/overclock.sh \
	$(COMMON_PREBUILT)/bootmenu/script/overclock_backup.sh:/system/bootmenu/script/overclock_backup.sh \
	$(COMMON_PREBUILT)/bootmenu/script/overclock_restore.sh:/system/bootmenu/script/overclock_restore.sh \
	$(COMMON_PREBUILT)/bootmenu/script/pre_bootmenu.sh:system/bootmenu/script/pre_bootmenu.sh \
	$(COMMON_PREBUILT)/bootmenu/script/reboot_bootmenu.sh:/system/bootmenu/script/reboot_bootmenu.sh \
	$(COMMON_PREBUILT)/bootmenu/script/reboot_cwr.sh:/system/bootmenu/script/reboot_cwr.sh \
	$(COMMON_PREBUILT)/bootmenu/script/reboot_rzr.sh:system/bootmenu/script/reboot_rzr.sh \
	$(COMMON_PREBUILT)/bootmenu/script/recovery_cwr.sh:/system/bootmenu/script/recovery_cwr.sh \
	$(COMMON_PREBUILT)/bootmenu/script/recovery_rzr.sh:/system/bootmenu/script/recovery_rzr.sh \
	$(COMMON_PREBUILT)/bootmenu/script/sdcard.sh:/system/bootmenu/script/sdcard.sh \
	$(COMMON_PREBUILT)/bootmenu/script/system.sh:/system/bootmenu/script/system.sh 
    
#Common prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
	debug.pdebug.performance.tuning=1 \
        video.accelerate.hw=1 \
        debug.sf.hw=1 \
        ro.media.enc.jpeg.quality=100 \
        pm.sleep_mode=1 \
        persist.adb.notify=1 \
        ro.telephony.call_ring.delay=0 \
        video.accelerate.hw=1 \
        persist.sys.use_dithering=0 \
        persist.sys.purgeable_assets=1 \
        ro.kernel.checkjni=0

# Inherit common build version
-include vendor/b00sted/configs/common_versions.mk

