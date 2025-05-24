#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8550-common
include device/xiaomi/sm8550-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/fuxi

# Kernel
BOOT_KERNEL_MODULES += \
	fts_touch_spi.ko

BOARD_VENDOR_KERNEL_MODULES_LOAD += \
	cs35l41_dlkm.ko \
	goodix_fod.ko \
	fts_touch_spi.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += \
	fts_touch_spi.ko
	
# Display
TARGET_SCREEN_DENSITY := 440

# OTA assert
TARGET_OTA_ASSERT_DEVICE := fuxi

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/properties/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public

# Inherit from the proprietary version
include vendor/xiaomi/fuxi/BoardConfigVendor.mk