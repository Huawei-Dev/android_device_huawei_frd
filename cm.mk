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

$(call inherit-product, device/huawei/frd/full_frd.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := cm_frd
BOARD_VENDOR := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="HONOR/FRD-L04/HWFRD:6.0/HUAWEIFRD-L04/C567B150:user/release-keys" \
    PRIVATE_BUILD_DESC="FRD-L04-user 6.0 HUAWEIFRD-L04 C567B150 release-keys" \
    PRODUCT_NAME=FRD
