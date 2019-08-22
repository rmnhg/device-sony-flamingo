# Copyright 2014 The Android Open Source Project
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

include device/sony/yukon/PlatformConfig.mk

TARGET_SPECIFIC_HEADER_PATH += device/sony/flamingo/include

TARGET_RECOVERY_FSTAB = device/sony/flamingo/rootdir/fstab.flamingo

TARGET_BOOTLOADER_BOARD_NAME := D2203

BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1782579200
#Reserve space for data encryption (1879030784-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1879014400

BOARD_KERNEL_CMDLINE += androidboot.hardware=flamingo

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/sony/flamingo/releasetools

#twrp
RECOVERY_VARIANT := twrp
TARGET_USERIMAGES_USE_F2FS := true
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
