## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := t1000

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xolo/t1000/device_t1000.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t1000
PRODUCT_NAME := cm_t1000
PRODUCT_BRAND := xolo
PRODUCT_MODEL := t1000
PRODUCT_MANUFACTURER := xolo
