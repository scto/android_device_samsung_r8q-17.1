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
$(call inherit-product, device/samsung/r8q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_r8q
PRODUCT_DEVICE := r8q
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G781B
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=r8q \
    PRODUCT_NAME=r8q \
    PRIVATE_BUILD_DESC="r8q-user 11 RP1A.200720.012 G781BXXS4CUI1 release-keys" \
    BUILD_DISPLAY_ID="$(BUILD_ID).G781BXXS4CUI1" \
    BUILD_NUMBER=G781BXXS4CUI1 \
    TARGET_BOOTLOADER_BOARD_NAME=kona \
    TARGET_BUILD_FLAVOR="r8q-$(TARGET_BUILD_VARIANT)"

BUILD_FINGERPRINT := "samsung/SM-G781B/SM-G781B:11/RP1A.200720.012/G781BXXS4CUI1:user/release-keys"
