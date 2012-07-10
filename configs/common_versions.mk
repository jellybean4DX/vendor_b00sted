# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_DISPLAY_ID=JRO03C \
BUILD_VERSION_TAGS=release-keys \
USER=teamb00sted \
BUILD_UTC_DATE=$(shell date +"%s")

#Set modversion and zip name
# pr0ject-0map_device-date.zip
MODVERSION=$(TARGET_PRODUCT)-$(shell date +"%F-%H-%M") 
PRODUCT_PROPERTY_OVERRIDES += \
ro.modversion=$(MODVERSION)


# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
