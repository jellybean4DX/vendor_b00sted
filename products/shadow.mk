# Inherit from shadow device
$(call inherit-product, device/motorola/shadow/shadow.mk)
# Inherit b00sted common
$(call inherit-product, vendor/b00sted/configs/common.mk)
#Inherit common versions
$(call inherit-product, vendor/b00sted/configs/common_versions.mk)
# Inherit omap3 config
$(call inherit-product, vendor/b00sted/configs/omap3.mk)
#Inherit from omap34com
$(call inherit-product, device/motorola/omap34com/device.mk)
$(call inherit-product, device/motorola/omap34com/full_omap34com.mk)

#Inherit the Bugless Beast!
$(call inherit-product, vendor/pete/products/common.mk)

#Release Name
PRODUCT_RELEASE_NAME := Shadow
COMMON_PREBUILT := vendor/b00sted/prebuilt/common

PRODUCT_PACKAGE_OVERLAYS += vendor/b00sted/overlay
PRODUCT_BOOTMENU := vendor/b00sted/prebuilt/common/bootmenu/shadow

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
        
#BOOTMENU modules || shadow 
PRODUCT_COPY_FILES += $(shell \
  find $(COMMON_PREBUILT)/bootmenu/shadow/lib/modules -name '*.ko' \
  | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
  | tr '\n' ' ')

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := bugl3SS_shadow
PRODUCT_DEVICE := shadow
PRODUCT_BRAND := verizon
PRODUCT_MODEL := DROIDX
