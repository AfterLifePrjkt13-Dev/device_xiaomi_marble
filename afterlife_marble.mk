#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common AfterLife configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# AfterLify
AFTERLIFE_BUILD_TYPE := OFFICIAL
AFTERLIFE_MAINTAINER := bmwtheseries
AFTERLIFE_GAPPS := true
AFTERLIFE_ZIP_TYPE := Gapps

PRODUCT_NAME := lineage_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23049PCD8G

PRODUCT_SYSTEM_NAME := marble_global
PRODUCT_SYSTEM_DEVICE := marble

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble_global-user 13 TKQ1.221022.001 V14.0.7.0.TMRMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/marble_global/marble:13/TKQ1.221022.001/V14.0.7.0.TMRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
