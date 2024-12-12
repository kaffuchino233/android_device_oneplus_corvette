#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_DEVICE),waffle)

include $(CLEAR_VARS)

PREBUILT_KERNEL_MODULES_SYSTEM_DLKM := $(TARGET_OUT_SYSTEM_DLKM)/lib/modules
$(PREBUILT_KERNEL_MODULES_SYSTEM_DLKM):
	@mkdir -p $(TARGET_OUT_SYSTEM_DLKM)/lib/modules
	@cp -r $(DEVICE_PATH)-prebuilt/modules/system_dlkm/* $(PREBUILT_KERNEL_MODULES_SYSTEM_DLKM)

ALL_DEFAULT_INSTALLED_MODULES += $(PREBUILT_KERNEL_MODULES_SYSTEM_DLKM)

endif
