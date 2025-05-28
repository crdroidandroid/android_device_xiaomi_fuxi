#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fuxi device
$(call inherit-product, device/xiaomi/fuxi/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Sign
$(call inherit-product, vendor/lineage-priv/keys/keys.mk)

# GMS
$(call inherit-product, vendor/google/gms/gms-vendor.mk)

PRODUCT_NAME := lineage_fuxi
PRODUCT_DEVICE := fuxi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 13

TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_DISABLE_MATLOG := true
TARGET_ENABLE_BLUR := true

PRODUCT_SYSTEM_NAME := Xiaomi 13
PRODUCT_SYSTEM_DEVICE := Xiaomi 13

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi