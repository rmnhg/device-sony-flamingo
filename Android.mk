ifeq ($(filter-out flamingo,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))
include hardware/qcom/msm8x26/msm8x26.mk

endif
