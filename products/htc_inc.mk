# Inherit from htc_inc device
$(call inherit-product, device/htc/inc/full_inc.mk)
# Inherit b00sted common
$(call inherit-product, vendor/b00sted/configs/common.mk)

#Release Name
PRODUCT_RELEASE_NAME := HTC_Inc
COMMON_PREBUILT := vendor/b00sted/prebuilt/common

PRODUCT_PACKAGE_OVERLAYS += vendor/b00sted/overlay
PRODUCT_BOOTMENU := vendor/b00sted/prebuilt/common/bootmenu/htc_inc

#include apns-conf
PRODUCT_COPY_FILES += \
$(COMMON_PREBUILT)/etc/apns-conf.xml:system/etc/apns-conf.xml 

#include animation
PRODUCT_COPY_FILES += \
$(COMMON_PREBUILT)/media/bootanimation.zip:system/media/bootanimation.zip

#BOOTMENU recovery files
PRODUCT_COPY_FILES += \
    $(PRODUCT_BOOTMENU)/recovery/cwm-recovery.zip:/system/bootmenu/recovery/cwm-recovery.zip \
    $(PRODUCT_BOOTMENU)/recovery/recovery.zip:/system/bootmenu/recovery/recovery.zip \
    $(PRODUCT_BOOTMENU)/recovery/rzr-recovery.zip:/system/bootmenu/recovery/rzr-recovery.zip \
    $(PRODUCT_BOOTMENU)/recovery/update-binary:/system/bootmenu/recovery/update-binary 
        
#BOOTMENU modules || htc_inc 
PRODUCT_COPY_FILES += $(shell \
  find $(COMMON_PREBUILT)/bootmenu/htc_inc/lib/modules -name '*.ko' \
  | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
  | tr '\n' ' ')

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := b00stedICS_htc_inc
PRODUCT_DEVICE := inc
PRODUCT_BRAND := verizon
PRODUCT_MODEL := HTC Incredible
