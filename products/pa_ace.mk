# Copyright (C) 2012 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_ace,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/htc/ace/device_ace.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/pa/packages/pa_ace.mk

# CM Package Extras
-include vendor/pa/packages/cm.mk

# Override AOSP build properties
PRODUCT_NAME := pa_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT="google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys"

endif
