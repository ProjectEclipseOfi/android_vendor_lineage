# EclipseOS Common Configuration

# Include maintainer configuration
$(call inherit-product, vendor/lineage/eclipse/config/maintainer.mk)

# EclipseOS Version
ECLIPSE_VERSION := 1.0
ECLIPSE_BUILD_TYPE ?= OFFICIAL

# EclipseOS Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.eclipse.version=$(ECLIPSE_VERSION) \
    ro.eclipse.build.type=$(ECLIPSE_BUILD_TYPE) \
    ro.eclipse.device=$(ECLIPSE_BUILD) \
    ro.modversion=EclipseOS-$(ECLIPSE_VERSION)-$(ECLIPSE_BUILD)-$(shell date +%Y%m%d) \
    ro.eclipse.display.version=EclipseOS-$(ECLIPSE_VERSION)

# Privacy-First Features
PRODUCT_PROPERTY_OVERRIDES += \
    ro.eclipse.privacy.mode=true \
    ro.eclipse.telemetry.enabled=false

# Performance Optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.eclipse.performance.optimized=true \
    ro.eclipse.kernel.tweaks=enabled

# EclipseOS Apps
PRODUCT_PACKAGES += \
    EclipseOSLauncher \
    EclipseOSSettings

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/lineage/eclipse/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/lineage/eclipse/overlay/common

# Permissions
PRODUCT_COPY_FILES += \
    vendor/lineage/eclipse/config/permissions/privapp-permissions-eclipse.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-eclipse.xml

# Inherit from LineageOS
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
