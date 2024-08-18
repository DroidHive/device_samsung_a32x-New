#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a32x device
$(call inherit-product, device/samsung/a32x/device.mk)

PRODUCT_DEVICE := a32x
PRODUCT_NAME := lineage_a32x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M326B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a32xins-user 13 TP1A.220624.014 M326BDDSACXE1 release-keys"

BUILD_FINGERPRINT := samsung/a32xins/a32x:13/TP1A.220624.014/M326BDDSACXE1:user/release-keys