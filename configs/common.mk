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
PRODUCT_PACKAGE_OVERLAYS += vendor/b00sted/overlay/common
COMMON_PREBUILT := vendor/b00sted/prebuilt/common

# Optional packages
# CM and AOSP
PRODUCT_PACKAGES += \
    audio_effects.conf \
    Basic \
    MusicFX \
    openvpn \
    SoundRecorder \
    Superuser \
    Superuser.apk \
    su \
    VoiceDialer 
    
#Common Blobs 
PRODUCT_COPY_FILES += \
    $(COMMON_PREBUILT)/bin/sysinit:system/bin/sysinit \
    $(COMMON_PREBUILT)/etc/resolv.conf:system/etc/resolv.conf \
    $(COMMON_PREBUILT)/etc/sysctl.conf:system/etc/sysctl.conf \
    $(COMMON_PREBUILT)/etc/init.d/90userinit:system/etc/init.d/90userinit \
    $(COMMON_PREBUILT)/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    $(COMMON_PREBUILT)/media/bootanimation.zip:system/media/bootanimation.zip

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
    
#Common prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
	debug.pdebug.performance.tuning=1 \
        video.accelerate.hw=1 \
        debug.sf.hw=1 \
        pm.sleep_mode=1 \
        persist.adb.notify=1 \
        ro.telephony.call_ring.delay=0 \
        video.accelerate.hw=1 \
        persist.sys.use_dithering=0 \
        ro.kernel.checkjni=0

