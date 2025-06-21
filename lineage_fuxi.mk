#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

# Sign
$(call inherit-product, vendor/lineage-priv/keys/keys.mk)

# GMS
$(call inherit-product, vendor/google/gms/gms-vendor.mk)

# Inherit LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := fuxi
PRODUCT_NAME := lineage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 13
PRODUCT_MANUFACTURER := Xiaomi

# Rom configurations
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_MATLOG := true

# Device configurations
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_ENABLE_BLUR := true

PRODUCT_SYSTEM_NAME := Xiaomi 13
PRODUCT_SYSTEM_DEVICE := Xiaomi 13

BUILD_FINGERPRINT := Xiaomi/fuxi/fuxi:15/AQ3A.240912.001/OS2.0.203.0.VMCCNXM:user/release-keys