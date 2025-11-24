#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from oscar device
$(call inherit-product, device/oneplus/oscar/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

PRODUCT_NAME := custom_oscar
PRODUCT_DEVICE := oscar
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2381

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OP535DL1-user 14 UKQ1.230924.001 S.18d36ec-1-17641 release-keys" \
    BuildFingerprint=OnePlus/CPH2381/OP535DL1:14/UKQ1.230924.001/S.18d36ec-1-17641:user/release-keys \
    DeviceName=OP535DL1 \
    DeviceProduct=OP535DL1 \
    SystemDevice=OP535DL1 \
    SystemName=OP535DL1
