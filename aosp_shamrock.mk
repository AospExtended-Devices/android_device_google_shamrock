# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, device/google/shamrock/full_shamrock.mk)

# Inherit some common AOSP-OMS stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8952

PRODUCT_NAME := aosp_shamrock
BOARD_VENDOR := google
PRODUCT_DEVICE := shamrock

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_MANUFACTURER := Google

PRODUCT_BRAND := Google
TARGET_VENDOR := google
TARGET_VENDOR_PRODUCT_NAME := Shamrock
TARGET_VENDOR_DEVICE_NAME := shamrock

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=qcom/shamrock/shamrock:7.1.1/NNH26/3945561:user/release-keys \
    PRIVATE_BUILD_DESC="shamrock-user 7.1.1 NNH26 3945561 release-keys"

# Build Supersu
DEFAULT_ROOT_METHOD := supersu

# Build Type
EXTENDED_BUILD_TYPE=OFFICIAL
