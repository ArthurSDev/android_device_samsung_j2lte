$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/j2lte/j2lte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/j2lte/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/j2lte/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_j2lte
PRODUCT_DEVICE := j2lte

# TWRP
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab
