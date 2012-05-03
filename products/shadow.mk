# Inherit from shadow device
$(call inherit-product, device/motorola/shadow/shadow.mk)
$(call inherit-product, vendor/b00sted/configs/common.mk)
#Inherit from omap34com
$(call inherit-product, device/motorola/omap34com/device.mk)
$(call inherit-product, device/motorola/omap34com/full_omap34com.mk)

#Release Name
PRODUCT_RELEASE_NAME := Shadow
COMMON_PREBUILT := vendor/b00sted/prebuilt

PRODUCT_PACKAGE_OVERLAYS += vendor/b00sted/overlay 

#include apns-conf
PRODUCT_COPY_FILES += \
$(COMMON_PREBUILT)/etc/apns-conf.xml:system/etc/apns-conf.xml 

#include animation
PRODUCT_COPY_FILES += \
$(COMMON_PREBUILT)/media/bootanimation.zip:system/media/bootanimation.zip

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := b00stedICS_shadow
PRODUCT_DEVICE := shadow
PRODUCT_BRAND := verizon
PRODUCT_MODEL := DROIDX
