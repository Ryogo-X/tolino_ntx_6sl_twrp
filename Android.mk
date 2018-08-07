LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),ntx_6sl)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif

