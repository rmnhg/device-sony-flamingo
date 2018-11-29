# Copyright (C) 2018 The LineageOS Project
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

# Inherit from yukon
include device/sony/yukon/PlatformConfig.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := D2202,D2203,D2206,D2212,D2243,flamingo

TARGET_SPECIFIC_HEADER_PATH += device/sony/flamingo/include

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/sony/flamingo
TARGET_KERNEL_CONFIG := aosp_yukon_flamingo_defconfig
TARGET_DTB_EXTRA_FLAGS := --force-v2

# Hardware Features
BOARD_HARDWARE_CLASS := device/sony/flamingo/cmhw

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/flamingo/bluetooth

# Partition information
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1782579200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1879030784

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/flamingo/rootdir/fstab.flamingo
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"

#twrp
RECOVERY_VARIANT := twrp
TARGET_USERIMAGES_USE_F2FS := true
TW_THEM := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
