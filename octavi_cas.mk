#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/cas/device.mk)

# Inherit from the Octavi configuration.
 $(call inherit-product, vendor/octavi/config/common_full_phone.mk)

PRODUCT_NAME := octavi_cas
PRODUCT_DEVICE := cas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/cas/cas:12/RKQ1.210826.002/V12.5.6.0.RJJCNXM:user/release-keys

# OctaviOS stuff
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_WANTS_FOD_ANIMATIONS := true
USE_PIXEL_CHARGER := true
OCTAVI_BUILD_TYPE := unofficial
OCTAVI_DEVICE_MAINTAINER := poskyc