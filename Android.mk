ifeq ($(filter-out flamingo,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include device/sony/common-headers/KernelHeaders.mk
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
