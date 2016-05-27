#
# Copyright (C) 2011 The Android Open-Source Project
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

TARGET_BOOTLOADER_BOARD_NAME := flo
TARGET_BOOTLOADER_NAME := flo
TARGET_BOARD_INFO_FILE := device/asus/flo/board-info.txt

BOARD_HAL_STATIC_LIBRARIES := libdumpstate.flo

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/flo

TARGET_RECOVERY_FSTAB = device/asus/flo/fstab.flo

# Optimizations
CLANG_O3 := true
STRICT_ALIASING := false
KRAIT_TUNINGS := false
GRAPHITE_OPTS := false
ENABLE_GCCONLY := true

# ROM toolchain
TARGET_GCC_VERSION_EXP := 4.9-uber

# Custom Kernel Toolchain
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.9-uber/bin

include device/asus/flo/BoardConfigCommon.mk
