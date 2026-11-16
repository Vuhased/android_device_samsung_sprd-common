#
# Copyright (C) 2016 The Android Open Source Project
# Copyright (C) 2016 The CyanogenMod Project
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
#

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# SPRD hardware
BOARD_USES_SPRD_HARDWARE := true

# Let the world know we are building for a spreadtrum device
TARGET_BOARD_SOC_VENDOR := sprd

# Graphics
USE_OPENGL_RENDERER := true

# RIL
# Android 9: use the AOSP rild/libril (HIDL IRadio) from hardware/ril; the SPRD copies in
# hardware/sprd/ril are Android 7 only and do not build against the Android 9 ril.h.
#BOARD_PROVIDES_RILD := true
#BOARD_PROVIDES_LIBRIL := true
BOARD_PROVIDES_LIBREFERENCE_RIL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Audio
BOARD_USES_TINYALSA_AUDIO := true

# CMHW
