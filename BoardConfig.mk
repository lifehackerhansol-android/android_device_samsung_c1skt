#
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
#
include device/samsung/smdk4412-common/BoardCommonConfig.mk

# Wifi
WIFI_DRIVER_MODULE_PATH :=

# Bionic
MALLOC_SVELTE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
LIBART_IMG_BASE := 0x30000000

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := cmc221
TARGET_SPECIFIC_HEADER_PATH += device/samsung/c1skt/include
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
BOARD_RIL_CLASS := ../../../device/samsung/c1skt/ril

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/c1skt/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := lineageos_c1skt_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_c1
TARGET_LIBINIT_C1_DEFINES_FILE := device/samsung/c1skt/init/init_c1skt.cpp
TARGET_UNIFIED_DEVICE := true
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/c1skt/releasetools

# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE := 1048576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/c1skt/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# PowerHAL
TARGET_POWERHAL_VARIANT := pegasusq

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/c1skt/selinux

# assert
TARGET_OTA_ASSERT_DEVICE := m0,i9300,GT-I9300,c1skt,c1ktt,c1lgt,SHV-E210S,SHV-E210K,SHV-E210L
