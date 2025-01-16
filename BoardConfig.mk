# Copyright (C) 2023 Paranoid Android
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

DEVICE_PATH := device/realme/lunaa

# Board-info
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/configs/board/board-info.txt

# Build rules
BUILD_BROKEN_NINJA_USES_ENV_VARS := TEMPORARY_DISABLE_PATH_RESTRICTIONS

# Display
TARGET_SCREEN_DENSITY := 480

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/configs/vintf/device_framework_compatibility_matrix.xml

# Inherit from sm8350-common
include device/oneplus/sm8350-common/BoardConfigCommon.mk

# Include proprietary files
include vendor/realme/lunaa/BoardConfigVendor.mk

# Kernel
KERNEL_FRAGMENT_CONFIG := vendor/oplus_yupik_QGKI.config

# OTA
TARGET_OTA_ASSERT_DEVICE := RMX3360|RMX3363|RMX3361|lunaa|RE54ABL1

# Partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 10196353024 # BOARD_SUPER_PARTITION_SIZE - 4MB
BOARD_SUPER_PARTITION_SIZE := 10200547328

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop

# SELinux - Include additional tree-specific rules
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
