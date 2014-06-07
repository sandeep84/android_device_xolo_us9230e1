$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/xolo/us9230e1/t1000-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/xolo/us9230e1/overlay

LOCAL_PATH := device/xolo/us9230e1
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_us9230e1
PRODUCT_DEVICE := us9230e1


WIFI_BAND := 802_11_BG

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    tf.enable=y \
    drm.service.enabled=true

PRODUCT_PACKAGES += \
    wpa_supplicant

DEVICE_PACKAGE_OVERLAYS += \
    device/xolo/us9230e1/overlay
    
