# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_DISPLAY_ID=IMM76I \
BUILD_VERSION_TAGS=release-keys \
USER=teamb00sted \
BUILD_UTC_DATE=$(shell date +"%s")



# Naming system
# 
# Public releases are donoted 'build_#'
# Testing donoted b#'
# Zip name is set in squisher based on vars below

TYPE=build
MAJOR=2
REALDATE=`date +%F-%H_%M`
ifeq ( $(TYPE), b ) 
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=$(TYPE)_$(MAJOR)-$(REALDATE)
else
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=$(TYPE)_$(MAJOR)
endif

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
