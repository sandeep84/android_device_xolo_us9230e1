# Copyright (C) 2007 The Android Open Source Project

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#      http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk

# Inlude most specefic first
include device/xolo/us9230e1/common.mk

# Use the non-open-source parts, if they're present
-include vendor/xolo/us9230e1/BoardConfigVendor.mk

# Product-specific compile-time definitions.


USE_CAMERA_STUB := true

# inherit from the proprietary version

TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_BOARD_PLATFORM_GPU := tegra
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := us9230e1
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_CPU_SMP := true
TARGET_TEGRA_VERSION := t30

# fix this up by examining /proc/mtd on a running device
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6567231488
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_HAS_LARGE_FILESYSTEM := true

## Kernel / Prebuilt zImage
TARGET_PREBUILT_KERNEL := device/xolo/us9230e1/kernel
TARGET_KERNEL_SOURCE := kernel/US9230E1
TARGET_KERNEL_CONFIG := cm_us9230e1_defconfig

BOARD_HAS_NO_SELECT_BUTTON := true

## TWRP / CWM Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/xolo/us9230e1/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/xolo/us9230e1/recovery/recovery.rc
#TARGET_RECOVERY_INITRC := device/xolo/us9230e1/twrp/recovery.rc
TARGET_RECOVERY_FSTAB := device/xolo/us9230e1/recovery/recovery.fstab
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_CUSTOM_POWER_BUTTON := 107

# Wifi 
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := wl12xx_mac80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_wl12xx
WIFI_DRIVER_MODULE_NAME     := "wl12xx_sdio"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wl12xx_sdio.ko"
COMMON_GLOBAL_CFLAGS        += -DUSES_TI_MAC80211


TARGET_MODULES_SOURCE := "hardware/ti/wlan/mac80211/compat_wl12xx"

wifi_modules:
	make -C $(TARGET_MODULES_SOURCE) KERNEL_DIR=$(KERNEL_OUT) KLIB=$(KERNEL_OUT) KLIB_BUILD=$(KERNEL_OUT) ARCH=$(TARGET_ARCH) $(ARM_CROSS_COMPILE)
	mv $(KERNEL_OUT)/lib/crc7.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/compat/compat.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/net/mac80211/mac80211.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/net/wireless/cfg80211.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx_sdio.ko $(KERNEL_MODULES_OUT)
	$(ARM_EABI_TOOLCHAIN)/arm-eabi-strip --strip-debug $(KERNEL_MODULES_OUT)/crc7.ko $(KERNEL_MODULES_OUT)/compat.ko $(KERNEL_MODULES_OUT)/mac80211.ko $(KERNEL_MODULES_OUT)/cfg80211.ko $(KERNEL_MODULES_OUT)/wl12xx.ko $(KERNEL_MODULES_OUT)/wl12xx_sdio.ko

TARGET_KERNEL_MODULES := wifi_modules

# Display/Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/xolo/us9230e1/prebuilt/lib/egl/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/xolo/us9230e1/bluetooth/vnd_bt.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xolo/us9230e1/bluetooth

## RIL
TARGET_PROVIDES_LIBRIL := true
BOARD_FORCE_RILD_AS_ROOT := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# Vold / USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/fsl-tegra-udc/gadget/lun0/file

