#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Powershare
$(call soong_config_set,lineage_powershare,powershare_path,/sys/class/qcom-battery/reverse_chg_mode)

# DSP Volume Synchronizer
PRODUCT_PACKAGES += \
    DSPVolumeSynchronizer
    
# IFAAService
PRODUCT_PACKAGES += \
    IFAAService

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init.fuxi.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.fuxi.rc \

# Euicc
PRODUCT_PACKAGES += \
    XiaomiEuicc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Overlay
PRODUCT_PACKAGES += \
    SettingsProviderResFuxi \
    ApertureOverlayFuxi \
    FrameworkResOverlayFuxi \
    SettingsOverlayFuxi \
    SystemUIOverlayFuxi \
    WifiResCommonMainline_Sys \
    WifiOverlayFuxi

# Sensors
PRODUCT_PACKAGES += \
    sensors.xiaomi.v2

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_ODM)/etc/sensors/hals.conf

# PowerShare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare-service.default

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/fuxi/fuxi-vendor.mk)