# Release name
PRODUCT_RELEASE_NAME := j2lte

# Inherit device configuration
$(call inherit-product, device/samsung/j2lte/omni_j2lte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j2lte
PRODUCT_NAME := omni_j2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := j2lte
PRODUCT_MANUFACTURER := samsung
