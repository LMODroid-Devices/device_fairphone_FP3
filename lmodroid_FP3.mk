#
# Copyright (C) 2020 The LineageOS Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

# Inherit from FP3 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)


PRODUCT_BRAND := Fairphone
PRODUCT_DEVICE := FP3
PRODUCT_MANUFACTURER := Fairphone
PRODUCT_NAME := lmodroid_FP3
PRODUCT_MODEL := FP3

PRODUCT_GMS_CLIENTID_BASE := android-uniscope

PRODUCT_SYSTEM_DEVICE := FP3

# userdebug
PRODUCT_BUILD_PROP_OVERRIDES += \
        TARGET_DEVICE=FP3 \
        PRIVATE_BUILD_DESC="FP3-user 13 6.A.023.1-gms-497e9bef release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Fairphone/FP3/FP3:13/6.A.023.1/gms-497e9bef:user/release-keys
