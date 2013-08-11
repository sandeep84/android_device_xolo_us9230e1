## Copyright 2013 Android Open Source Project
## Common make file

## Recovery
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/recovery/fstab:recovery/root/etc/fstab

## Ramdisk
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/ramdisk/init.us9230e1.rc:root/init.us9230e1.rc \
    device/xolo/us9230e1/ramdisk/ueventd.us9230e1.rc:root/ueventd.us9230e1.rc \
    device/xolo/us9230e1/ramdisk/init.us9230e1.usb.rc:root/init.us9230e1.usb.rc 

## Hardware Specefic
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
    
PRODUCT_PACKAGES := \
    audio.a2dp.default \
    audio.usb.default \
    librs_jni \
    setup_fs \
    l2ping \
    hcitool \
    bttest \
    com.android.future.usb.accessory    
    
# HW lib
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/prebuilt/lib/hw/gps.us9230e1.so:system/lib/hw/gps.us9230e1.so \
    device/xolo/us9230e1/prebuilt/lib/hw/lights.us9230e1.so:system/lib/hw/lights.us9230e1.so \
    device/xolo/us9230e1/prebuilt/lib/hw/sensors.compass.us9230e1.so:system/lib/hw/sensors.compass.us9230e1.so \
    device/xolo/us9230e1/prebuilt/lib/hw/sensors.us9230e1.so:system/lib/hw/sensors.us9230e1.so

# EGL/lib
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/prebuilt/lib/egl/libEGL_perfhud.so:system/lib/egl/libEGL_perfhud.so \
    device/xolo/us9230e1/prebuilt/lib/egl/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \
    device/xolo/us9230e1/prebuilt/lib/egl/libEGL_tegra_impl.so:system/lib/egl/libEGL_tegra_impl.so \
    device/xolo/us9230e1/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/xolo/us9230e1/prebuilt/lib/egl/libGLESv1_CM_perfhud.so:system/lib/egl/libGLESv1_CM_perfhud.so \
    device/xolo/us9230e1/prebuilt/lib/egl/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \
    device/xolo/us9230e1/prebuilt/lib/egl/libGLESv1_CM_tegra_impl.so:system/lib/egl/libGLESv1_CM_tegra_impl.so \
    device/xolo/us9230e1/prebuilt/lib/egl/libGLESv2_perfhud.so:system/lib/egl/libGLESv2_perfhud.so \
    device/xolo/us9230e1/prebuilt/lib/egl/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so \
    device/xolo/us9230e1/prebuilt/lib/egl/libGLESv2_tegra_impl.so:system/lib/egl/libGLESv2_tegra_impl.so \

## Touchscreen
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/prebuilt/usr/idc/raydium_ts.idc:system/usr/idc/raydium_ts.idc

# GPS conf
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/prebuilt/etc/gps.conf:system/etc/gps.conf

## Loop ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=3000

# Common assets
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_LOCALES += en

# Media
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/xolo/us9230e1/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/xolo/us9230e1/prebuilt/etc/media_codecs.xml:system/etc/media_profiles.xml \
    device/xolo/us9230e1/prebuilt/etc/media_codecs.xml:system/etc/media_profiles.xml 

# Vold/SD Card
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/xolo/us9230e1/prebuilt/etc/vold_sdcard.fstab:system/etc/vold_sdcard.fstab

# Wifi
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/prebuilt/etc/wifi/dhcpcd.conf:system/etc/wifi/dhcpcd.conf \
    device/xolo/us9230e1/prebuilt/etc/wifi/dhcpd.conf:system/etc/wifi/dhcpd.conf \
    device/xolo/us9230e1/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/xolo/us9230e1/prebuilt/etc/wifi/ibss_supplicant.conf:system/etc/wifi/ibss_supplicant.conf \
    device/xolo/us9230e1/prebuilt/etc/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/xolo/us9230e1/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/xolo/us9230e1/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \








