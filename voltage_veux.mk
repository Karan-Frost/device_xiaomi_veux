#
# Copyright (C) 2023-2024 voltageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit common voltage stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2201116SG
PRODUCT_NAME := voltage_veux
PRODUCT_SYSTEM_NAME := veux_global
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Inherit some common device props
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_BLUR := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="veux_global-user 13 TKQ1.221114.001 V14.0.6.0.TKCMIXM release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/veux_global/veux:13/TKQ1.221114.001/V14.0.6.0.TKCMIXM:user/release-keys

# EPPE
TARGET_DISABLE_EPPE := true