#
# Copyright (C) 2021 Project-LegionOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common LegionOS stuff.
$(call inherit-product, vendor/legion/config/common_full_phone.mk)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=markkey014
LEGION_MAINTAINER := markkey014
LEGION_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_FOD := true
EXTRA_FOD_ANIMATIONS := true

PRODUCT_NAME := legion_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
