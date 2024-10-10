#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := e2s

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from e2s device
$(call inherit-product, device/samsung/e2s/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/e2s/recovery/root,recovery/root)

PRODUCT_DEVICE := e2s
PRODUCT_NAME := twrp_e2s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S926B
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="e2sxxx-user 14 UP1A.231005.007 S926BXXU3AXH7 release-keys"

BUILD_FINGERPRINT := samsung/e2sxxx/e2s:14/UP1A.231005.007/S926BXXU3AXH7:user/release-keys
