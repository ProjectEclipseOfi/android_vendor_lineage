# EclipseOS Versioning

# Version Information
ECLIPSE_VERSION_MAJOR := 1
ECLIPSE_VERSION_MINOR := 0
ECLIPSE_VERSION_MAINTENANCE := 0

ECLIPSE_VERSION := $(ECLIPSE_VERSION_MAJOR).$(ECLIPSE_VERSION_MINOR).$(ECLIPSE_VERSION_MAINTENANCE)

# Build Date
ECLIPSE_BUILD_DATE := $(shell date -u +%Y%m%d)
ECLIPSE_BUILD_TIME := $(shell date -u +%H%M)

# Build Type
ifndef ECLIPSE_BUILD_TYPE
    ECLIPSE_BUILD_TYPE := OFFICIAL
endif

# Device
ECLIPSE_BUILD := $(LINEAGE_BUILD)

# Display Version
ECLIPSE_DISPLAY_VERSION := EclipseOS-$(ECLIPSE_VERSION)-$(ECLIPSE_BUILD)-$(ECLIPSE_BUILD_DATE)-$(ECLIPSE_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.eclipse.version=$(ECLIPSE_VERSION) \
    ro.eclipse.version.major=$(ECLIPSE_VERSION_MAJOR) \
    ro.eclipse.version.minor=$(ECLIPSE_VERSION_MINOR) \
    ro.eclipse.build.date=$(ECLIPSE_BUILD_DATE) \
    ro.eclipse.build.type=$(ECLIPSE_BUILD_TYPE) \
    ro.eclipse.display.version=$(ECLIPSE_DISPLAY_VERSION) \
    ro.modversion=$(ECLIPSE_DISPLAY_VERSION)
