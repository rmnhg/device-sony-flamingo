# Copyright 2017 The Android Open Source Project
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

# Boot animation
TARGET_SCREEN_HEIGHT	:= 854
TARGET_SCREEN_WIDTH	:= 480

# Kernel config
TARGET_KERNEL_CONFIG := arima_8926ss_ap_defconfig

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/flamingo/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Product attributes
PRODUCT_NAME := aosp_flamingo
PRODUCT_DEVICE := flamingo
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Sony

$(call inherit-product, device/sony/flamingo/device.mk)
$(call inherit-product-if-exists, vendor/sony/flamingo/flamingo-vendor.mk)

# Fingerprint for flamingo (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D2203
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D2203/D2203:4.4.4/18.5.C.0.19/7H9_bQ:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D2203-user 4.4.4 18.5.C.0.19 7H9_bQ release-keys"
