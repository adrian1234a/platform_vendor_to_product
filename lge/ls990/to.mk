#
# Copyright 2016 Team OctOS Open Source Project
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

$(call inherit-product, device/lge/ls990/full_ls990.mk)

# Build using uber toolchain on linux but use default toolchain on darwin.
ifneq ($(HOST_OS),darwin)
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9-uber/bin
TARGET_GCC_VERSION_EXP := 4.9-uber
endif

# Inherit some common OctOs stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

$(call inherit-product, vendor/to/product/lge/g3-common/to.mk)

PRODUCT_NAME := to_ls990

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_spr_us" \
    BUILD_FINGERPRINT="lge/g3_spr_us/g3:4.4.2/KVT49L.LS990ZV4/LS990ZV4.1403169216:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_spr_us-user 4.4.2 KVT49L.LS990ZV4 LS990ZV4.1403169216 release-keys"



