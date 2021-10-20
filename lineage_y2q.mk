#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from r5q device
$(call inherit-product, device/samsung/y2q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_y2q
PRODUCT_DEVICE := y2q
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G986U
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=y2q \
    PRODUCT_NAME=y2q \
    PRIVATE_BUILD_DESC="y2qsq-user 11 RP1A.200720.012 G986USQS2DUI5 release-keys" \
    BUILD_DISPLAY_ID="$(BUILD_ID).G986USQS2DUI5" \
    BUILD_NUMBER=G986USQS2DUI5 \
    TARGET_BOOTLOADER_BOARD_NAME=kona \
    TARGET_BUILD_FLAVOR="y2q-$(TARGET_BUILD_VARIANT)"

BUILD_FINGERPRINT := "samsung/y2qsq/y2q:11/RP1A.200720.012/G986USQS2DUI5:user/release-keys"
