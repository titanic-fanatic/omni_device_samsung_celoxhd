#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/samsung/celoxhd/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_celoxhd
PRODUCT_DEVICE := celoxhd
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SGH-I757M
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I757M TARGET_DEVICE=SGH-I757M BUILD_FINGERPRINT="samsung/SGH-I757M/SGH-I757M:4.3.1/JLS36I/UGMC5:user/release-keys" PRIVATE_BUILD_DESC="SGH-I757M-user 4.3.1 JLS36I UGMC5 release-keys"

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product-if-exists, vendor/samsung/celoxhd/celoxhd-vendor.mk)
