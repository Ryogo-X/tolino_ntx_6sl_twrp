LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),tolino_generic)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif

