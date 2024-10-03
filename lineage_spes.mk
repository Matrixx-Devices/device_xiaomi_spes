#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Product Specifics
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_SYSTEM_NAME := spes
PRODUCT_SYSTEM_DEVICE := spes

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=spes \
    TARGET_DEVICE=spes

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot animaton
TARGET_BOOT_ANIMATION_RES := 1080

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := sayann70
WITH_GMS := true

# Extra Matrixx Stuff
MATRIXX_CHIPSET := SD680
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 2400x1080
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Fingerprint
BUILD_FINGERPRINT := "Redmi/spes/spes:13/TKQ1.221114.001/V14.0.5.0.TGCINXM:user/release-keys"
