# Copyright (C) 2014 Hazy Project
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Hazy GSM telephony parts
$(call inherit-product, vendor/hazy/configs/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/hazy/config/nfc_enhanced.mk)

# Inherit from our Hazy product configuration
$(call inherit-product, vendor/hazy/configs/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from jfltetmo device
$(call inherit-product, device/samsung/jflte/device.mk)

# Inherit from our Hazy vendor product
$(call inherit-product, vendor/hazy/device-partial.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := hazy_jflte
PRODUCT_DEVICE := jflte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9505
