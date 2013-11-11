#!/bin/sh

# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#--------------------------------------------------------------

DEVICE=us9230e1
MANUFACTURER=xolo
OUTVENDOR=vendor
#--------------------------------------------------------------

#--------------------------------------------------------------
# XOLO
#--------------------------------------------------------------

OUTDIR=$OUTVENDOR/$MANUFACTURER/$DEVICE
mkdir -p ../../../$OUTDIR/proprietary
MAKEFILE=../../../$OUTDIR/device-vendor.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_STEM := us9230e1/device-partial.mk

\$(call inherit-product-if-exists, vendor/audience/\$(LOCAL_STEM))
\$(call inherit-product-if-exists, vendor/broadcom/\$(LOCAL_STEM))
\$(call inherit-product-if-exists, vendor/xolo/\$(LOCAL_STEM))
\$(call inherit-product-if-exists, vendor/widevine/\$(LOCAL_STEM))

PRODUCT_RESTRICT_VENDOR_FILES := owner
EOF

#--------------------------------------------------------------

MAKEFILE=../../../$OUTDIR/BoardConfigVendor.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_STEM := us9230e1/BoardConfigPartial.mk

# -include vendor/audience/\$(LOCAL_STEM)
# -include vendor/broadcom/\$(LOCAL_STEM)
-include vendor/xolo/\$(LOCAL_STEM)
# -include vendor/widevine/\$(LOCAL_STEM)

EOF

#--------------------------------------------------------------

MAKEFILE=../../../$OUTDIR/BoardConfigPartial.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# HW lib
PRODUCT_COPY_FILES += \
    vendor/xolo/us9230e1/proprietary/hw/gps.us9230e1.so:system/lib/hw/gps.us9230e1.so \
    vendor/xolo/us9230e1/proprietary/libgps.so:system/lib/libgps.so \
    vendor/xolo/us9230e1/proprietary/libgpsservices.so:system/lib/libgpsservices.so \
    vendor/xolo/us9230e1/proprietary/libsupllocationprovider.so:system/lib/libsupllocationprovider.so \
    vendor/xolo/us9230e1/proprietary/libmcphalgps.so:system/lib/libmcphalgps.so \
    vendor/xolo/us9230e1/proprietary/hw/lights.us9230e1.so:system/lib/hw/lights.us9230e1.so \
    vendor/xolo/us9230e1/proprietary/hw/hwcomposer.tegra.so:system/lib/hw/hwcomposer.tegra.so \
    vendor/xolo/us9230e1/proprietary/hw/sensors.compass.us9230e1.so:system/lib/hw/sensors.compass.us9230e1.so \
    vendor/xolo/us9230e1/proprietary/hw/sensors.us9230e1.so:system/lib/hw/sensors.us9230e1.so \
    vendor/xolo/us9230e1/proprietary/libsensors.base.so:system/lib/libsensors.base.so \
    vendor/xolo/us9230e1/proprietary/libsensors.akm.so:system/lib/libsensors.akm.so \
    vendor/xolo/us9230e1/proprietary/libsensors.kionix.so:system/lib/libsensors.kionix.so \
    vendor/xolo/us9230e1/proprietary/libsensors.apds9900.so:system/lib/libsensors.apds9900.so \
    vendor/xolo/us9230e1/proprietary/libsensors.hwmon.so:system/lib/libsensors.hwmon.so \
    vendor/xolo/us9230e1/proprietary/libwvm.so:vendor/lib/libwvm.so \

# EGL/lib
PRODUCT_COPY_FILES += \
    vendor/xolo/us9230e1/proprietary/egl/libEGL_perfhud.so:system/lib/egl/libEGL_perfhud.so \
    vendor/xolo/us9230e1/proprietary/egl/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \
    vendor/xolo/us9230e1/proprietary/egl/libEGL_tegra_impl.so:system/lib/egl/libEGL_tegra_impl.so \
    vendor/xolo/us9230e1/proprietary/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    vendor/xolo/us9230e1/proprietary/egl/libGLESv1_CM_perfhud.so:system/lib/egl/libGLESv1_CM_perfhud.so \
    vendor/xolo/us9230e1/proprietary/egl/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \
    vendor/xolo/us9230e1/proprietary/egl/libGLESv1_CM_tegra_impl.so:system/lib/egl/libGLESv1_CM_tegra_impl.so \
    vendor/xolo/us9230e1/proprietary/egl/libGLESv2_perfhud.so:system/lib/egl/libGLESv2_perfhud.so \
    vendor/xolo/us9230e1/proprietary/egl/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so \
    vendor/xolo/us9230e1/proprietary/egl/libGLESv2_tegra_impl.so:system/lib/egl/libGLESv2_tegra_impl.so \
    vendor/xolo/us9230e1/proprietary/libnvos.so:system/lib/libnvos.so \
    vendor/xolo/us9230e1/proprietary/libnvddk_2d.so:system/lib/libnvddk_2d.so \
    vendor/xolo/us9230e1/proprietary/libnvddk_2d_v2.so:system/lib/libnvddk_2d_v2.so \
    vendor/xolo/us9230e1/proprietary/libnvrm.so:system/lib/libnvrm.so \
    vendor/xolo/us9230e1/proprietary/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \
    vendor/xolo/us9230e1/proprietary/libardrv_dynamic.so:system/lib/libardrv_dynamic.so \


EOF

#--------------------------------------------------------------
#  XOLO PROPS
#--------------------------------------------------------------

OUTDIR=$OUTVENDOR/xolo/$DEVICE
mkdir -p ../../../$OUTDIR/proprietary
MAKEFILE=../../../$OUTDIR/device-partial.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# XOLO blob(s) necessary for us9230e1 hardware
PRODUCT_PACKAGES := \
    fimc_is_fw \\
    fimc_is_fw2 \\
    mfc_fw \\
    maxtouch \\
    setfile \\
    setfile_4e5 \\
    setfile_6a3 \\
    00060308060501020000000000000000 \\
    020a0000000000000000000000000000 \\
    07060000000000000000000000000000 \\
    libbccArm.sha1 \\
    libbccArm \\
    libbcinfoArm \\
    libclcoreArm \\
    libclcore_neonArm \\
    libRSDriverArm \\
    libGLES_mali
EOF

#--------------------------------------------------------------

MAKEFILE=../../../$OUTDIR/proprietary/Android.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := \$(call my-dir)

ifeq (\$(TARGET_DEVICE),us9230e1)

include \$(CLEAR_VARS)
LOCAL_MODULE := fimc_is_fw
LOCAL_SRC_FILES := fimc_is_fw.bin
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := fimc_is_fw2
LOCAL_SRC_FILES := fimc_is_fw2.bin
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := mfc_fw
LOCAL_SRC_FILES := mfc_fw.bin
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := setfile
LOCAL_SRC_FILES := setfile.bin
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := setfile_4e5
LOCAL_SRC_FILES := setfile_4e5.bin
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := setfile_6a3
LOCAL_SRC_FILES := setfile_6a3.bin
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libGLES_mali
LOCAL_SRC_FILES := libGLES_mali.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo_arm
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libbccArm.sha1
LOCAL_SRC_FILES := libbccArm.sha1.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo_arm
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libbccArm
LOCAL_SRC_FILES := libbccArm.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo_arm
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libbcinfoArm
LOCAL_SRC_FILES := libbcinfoArm.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo_arm
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libclcoreArm
LOCAL_SRC_FILES := libclcoreArm.bc
LOCAL_MODULE_SUFFIX := .bc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo_arm
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libclcore_neonArm
LOCAL_SRC_FILES := libclcore_neonArm.bc
LOCAL_MODULE_SUFFIX := .bc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo_arm
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libRSDriverArm
LOCAL_SRC_FILES := libRSDriverArm.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo_arm
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := 00060308060501020000000000000000
LOCAL_SRC_FILES := 00060308060501020000000000000000.tlbin
LOCAL_MODULE_SUFFIX := .tlbin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/secapp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := 020a0000000000000000000000000000
LOCAL_SRC_FILES := 020a0000000000000000000000000000.drbin
LOCAL_MODULE_SUFFIX := .drbin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/secapp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := 07060000000000000000000000000000
LOCAL_SRC_FILES := 07060000000000000000000000000000.tlbin
LOCAL_MODULE_SUFFIX := .tlbin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/secapp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := maxtouch
LOCAL_SRC_FILES := maxtouch.fw
LOCAL_MODULE_SUFFIX := .fw
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := xolo
include \$(BUILD_PREBUILT)

endif
EOF

#--------------------------------------------------------------
#  BROADCOM
#--------------------------------------------------------------

OUTDIR=$OUTVENDOR/broadcom/$DEVICE
mkdir -p ../../../$OUTDIR/proprietary
MAKEFILE=../../../$OUTDIR/proprietary/Android.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := \$(call my-dir)

ifeq (\$(TARGET_DEVICE),us9230e1)

include \$(CLEAR_VARS)
LOCAL_MODULE := bcm2079x_firmware
LOCAL_SRC_FILES := bcm2079x_firmware.ncd
LOCAL_MODULE_SUFFIX := .ncd
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := broadcom
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := bcm2079x_pre_firmware
LOCAL_SRC_FILES := bcm2079x_pre_firmware.ncd
LOCAL_MODULE_SUFFIX := .ncd
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := broadcom
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := bcm43241
LOCAL_SRC_FILES := bcm43241.hcd
LOCAL_MODULE_SUFFIX := .hcd
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := broadcom
include \$(BUILD_PREBUILT)

endif
EOF

#-------------------------------------------------------------------------

MAKEFILE=../../../$OUTDIR/device-partial.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Broadcom blob(s) necessary for Manta hardware
PRODUCT_PACKAGES := \\
    bcm2079x_firmware \\
    bcm2079x_pre_firmware \\
    bcm43241
EOF

MAKEFILE=../../../$OUTDIR/BoardConfigPartial.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
EOF

#--------------------------------------------------------------
#  AUDIENCE
#--------------------------------------------------------------

OUTDIR=$OUTVENDOR/audience/$DEVICE
mkdir -p ../../../$OUTDIR/proprietary
MAKEFILE=../../../$OUTDIR/proprietary/Android.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := \$(call my-dir)

ifeq (\$(TARGET_DEVICE),us9230e1)

include \$(CLEAR_VARS)
LOCAL_MODULE := es305_fw
LOCAL_SRC_FILES := es305_fw.bin
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR)/firmware
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := audience
include \$(BUILD_PREBUILT)

endif
EOF

#---------------------------------------------------------------

MAKEFILE=../../../$OUTDIR/device-partial.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Audience blob(s) necessary for us9230e1 hardware
PRODUCT_PACKAGES := \\
    es305_fw
EOF

#--------------------------------------------------------------

MAKEFILE=../../../$OUTDIR/BoardConfigPartial.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
EOF

#--------------------------------------------------------------
#  WIDEVINE
#--------------------------------------------------------------


OUTDIR=$OUTVENDOR/widevine/$DEVICE
mkdir -p ../../../$OUTDIR/proprietary
MAKEFILE=../../../$OUTDIR/proprietary/Android.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := \$(call my-dir)

ifeq (\$(TARGET_DEVICE),us9230e1)

include \$(CLEAR_VARS)
LOCAL_MODULE := libwvdrm_L1
LOCAL_SRC_FILES := libwvdrm_L1.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := widevine
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libWVStreamControlAPI_L1
LOCAL_SRC_FILES := libWVStreamControlAPI_L1.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := widevine
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libwvm
LOCAL_SRC_FILES := libwvm.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := widevine
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libdrmwvmplugin
LOCAL_SRC_FILES := libdrmwvmplugin.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/drm
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := widevine
include \$(BUILD_PREBUILT)

include \$(CLEAR_VARS)
LOCAL_MODULE := libdrmdecrypt
LOCAL_SRC_FILES := libdrmdecrypt.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := \$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := widevine
include \$(BUILD_PREBUILT)

endif
EOF
#--------------------------------------------------------------

MAKEFILE=../../../$OUTDIR/device-partial.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Widevine blob(s) necessary for Manta hardware
PRODUCT_PACKAGES := \\
    libwvdrm_L1 \\
    libWVStreamControlAPI_L1 \\
    libwvm \\
    libdrmwvmplugin \\
    libdrmdecrypt

EOF

#--------------------------------------------------------------

MAKEFILE=../../../$OUTDIR/BoardConfigPartial.mk

(cat << EOF) > $MAKEFILE
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
EOF

#--------------------------------------------------------------

