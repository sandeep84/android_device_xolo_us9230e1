## Recovery
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/recovery/fstab:recovery/root/etc/fstab

## Ramdisk
PRODUCT_COPY_FILES += \
    device/xolo/us9230e1/ramdisk/init.us9230e1.rc:root/init.us9230e1.rc \
    device/xolo/us9230e1/ramdisk/ueventd.us9230e1.rc:root/ueventd.us9230e1.rc \
    device/xolo/us9230e1/ramdisk/init.us9230e1.usb.rc:root/init.us9230e1.usb.rc 
