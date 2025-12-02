# EclipseOS Common Configuration

# Include maintainer configuration
$(call inherit-product, vendor/lineage/eclipse/config/maintainer.mk)

# EclipseOS Version
ECLIPSE_VERSION := 1.0
ECLIPSE_BUILD_TYPE ?= OFFICIAL

# EclipseOS Properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.eclipse.version=$(ECLIPSE_VERSION) \
    ro.eclipse.build.type=$(ECLIPSE_BUILD_TYPE) \
    ro.eclipse.device=$(ECLIPSE_BUILD) \
    ro.modversion=EclipseOS-$(ECLIPSE_VERSION)-$(ECLIPSE_BUILD)-$(shell date +%Y%m%d) \
    ro.eclipse.display.version=EclipseOS-$(ECLIPSE_VERSION)

# Privacy-First Features
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.eclipse.privacy.mode=true \
    ro.eclipse.telemetry.enabled=false

# Performance Optimizations
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.eclipse.performance.optimized=true \
    ro.eclipse.kernel.tweaks=enabled

# EclipseOS Apps
PRODUCT_PACKAGES += EclipseOSLauncher EclipseOSSettings
PRODUCT_PACKAGES += \

# Boot Animation
PRODUCT_COPY_FILES += \
PRODUCT_COPY_FILES += vendor/lineage/eclipse/config/permissions/privapp-permissions-eclipse.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-eclipse.xml
    vendor/lineage/eclipse/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/lineage/eclipse/overlay/common

# Permissions
PRODUCT_COPY_FILES += \
PRODUCT_COPY_FILES += vendor/lineage/eclipse/config/permissions/privapp-permissions-eclipse.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-eclipse.xml

# Inherit from LineageOS
$(call inherit-product, vendor/lineage/config/common_mobile.mk)
TARGET_RELEASETOOLS_EXTENSIONS := vendor/lineage/eclipse/releasetools
TARGET_OTA_ASSERT_DEVICE := $(TARGET_DEVICE)
# Eclipse ZIP NAME
TARGET_FILE_NAME := EclipseOS-$(ECLIPSE_VERSION)-$(TARGET_DEVICE)-OFFICIAL.zip
