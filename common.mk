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
    lights.us9230e1 \
    audio.primary.us9230e1 \
    power.us9230e1 \
    audio.a2dp.default \
    audio.usb.default \
    librs_jni \
    setup_fs \
    l2ping \
    hcitool \
    bttest \
    com.android.future.usb.accessory    
    
    
