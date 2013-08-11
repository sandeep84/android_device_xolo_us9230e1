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

# Product-specific compile-time definitions.


USE_CAMERA_STUB := true

# inherit from the proprietary version

TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := tegra3
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

# fix this up by examining /proc/mtd on a running device
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6567231488
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/xolo/us9230e1/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

## TWRP Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/xolo/us9230e1/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/xolo/us9230e1/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/xolo/us9230e1/recovery/recovery.fstab

# Wifi 
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/vendor/firmware/fw_bcmdhd_p2p.bin"

# Display/Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/xolo/us9230e1/egl.cfg

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true


