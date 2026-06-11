#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/camellia/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_camellia
PRODUCT_DEVICE := camellia
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2103K19C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Dolby Audio
# Set to false to disable Dolby Audio support at build time
INCLUDE_DOLBY_AUDIO := true

TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
SYSTEM_OPTIMIZE_JAVA := true
TARGET_BOOT_ANIMATION_RES := 1080
SYSTEMUI_OPTIMIZE_JAVA := true
TARGET_SUPPORTS_QUICK_TAP := true

# Additional flags
TORCH_STR_SUPPORTED := true
TARGET_BUILD_DEVICE_AS_WEBCAM := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Redmi/camellia/camellia:12/SP1A.210812.016/V14.0.6.0.TKTMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_DEVICE)
