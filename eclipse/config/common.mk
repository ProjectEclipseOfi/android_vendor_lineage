# EclipseOS Common Configuration

# Include maintainer configuration
$(call inherit-product, vendor/lineage/eclipse/config/maintainer.mk)

# EclipseOS Version
ECLIPSE_VERSION := 1.0
ECLIPSE_BUILD_TYPE ?= OFFICIAL

# EclipseOS Properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.modversion=EclipseOS-$(ECLIPSE_VERSION)-$(ECLIPSE_BUILD)-$(shell date +%Y%m%d) \

# Privacy-First Features
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \

# Performance Optimizations
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \

# EclipseOS Apps
PRODUCT_PACKAGES += \

# Boot Animation
    vendor/lineage/eclipse/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/lineage/eclipse/overlay/common

# Permissions

# Inherit from LineageOS
TARGET_RELEASETOOLS_EXTENSIONS := vendor/lineage/eclipse/releasetools
TARGET_OTA_ASSERT_DEVICE := $(TARGET_DEVICE)
# Eclipse ZIP NAME
TARGET_FILE_NAME := EclipseOS-$(ECLIPSE_VERSION)-$(TARGET_DEVICE)-OFFICIAL.zip

include vendor/eclipse/config/version.mk
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \n    ro.eclipse.version=$(ECLIPSE_VERSION) \n    ro.eclipse.build.type=$(ECLIPSE_BUILD_TYPE)

# ==== EclipseOS System Props ====
include vendor/eclipse/config/version.mk

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.eclipse.version=$(ECLIPSE_VERSION) \
    ro.eclipse.build.type=$(ECLIPSE_BUILD_TYPE) \
    ro.eclipse.device=$(ECLIPSE_DEVICE)

# EclipseOS Apps
PRODUCT_PACKAGES += \
    EclipseOSLauncher \
    EclipseOSSettings

# EclipseOS privileged apps
PRODUCT_SYSTEM_EXT_PRIV_APP += \
    EclipseOSLauncher \
    EclipseOSSettings


# ==== EclipseOS System Props ====
include vendor/eclipse/config/version.mk

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.eclipse.version=$(ECLIPSE_VERSION) \
    ro.eclipse.build.type=$(ECLIPSE_BUILD_TYPE) \
    ro.eclipse.device=$(ECLIPSE_DEVICE)

# EclipseOS Apps
PRODUCT_PACKAGES += \
    EclipseOSLauncher \
    EclipseOSSettings

# EclipseOS privileged apps
PRODUCT_SYSTEM_EXT_PRIV_APP += \
    EclipseOSLauncher \
    EclipseOSSettings


# ==== EclipseOS System Props ====
include vendor/eclipse/config/version.mk

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.eclipse.version=$(ECLIPSE_VERSION) \
    ro.eclipse.build.type=$(ECLIPSE_BUILD_TYPE) \
    ro.eclipse.device=$(ECLIPSE_DEVICE)

# EclipseOS Apps
PRODUCT_PACKAGES += \
    EclipseOSLauncher \
    EclipseOSSettings

# EclipseOS privileged apps
PRODUCT_SYSTEM_EXT_PRIV_APP += \
    EclipseOSLauncher \
    EclipseOSSettings

