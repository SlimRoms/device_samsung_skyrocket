# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common celox
-include device/samsung/celox-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/skyrocket/BoardConfigVendor.mk

# Assert
TARGET_BOARD_INFO_FILE ?= device/samsung/skyrocket/board-info.txt
TARGET_OTA_ASSERT_DEVICE := SGH-I727,skyrocket

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/skyrocket/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_skyrocket_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/msm8660
#KERNEL_TOOLCHAIN_PREFIX := arm-linux-gnueabihf-
#KERNEL_TOOLCHAIN := "$(ANDROID_BUILD_TOP)/prebuilt/$(HOST_OS)-x86/toolchain/linaro-4.7-12.10/bin/"

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 627048448
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
TARGET_USERIMAGES_USE_EXT4 := true
