## Recovery
PRODUCT_COPY_FILES += \
    device/xolo/t1000/recovery/fstab:recovery/root/etc/fstab

## Ramdisk
PRODUCT_COPY_FILES += \
    device/xolo/t1000/ramdisk/init.us9230e1.rc:root/init.us9230e1.rc \
    device/xolo/t1000/ramdisk/ueventd.us9230e1.rc:root/ueventd.us9230e1.rc \
    device/xolo/t1000/ramdisk/init.us9230e1.usb.rc:root/init.us9230e1.usb.rc 
