LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := iconv
LOCAL_CFLAGS    := \
    -Wno-multichar \
    -D_ANDROID \
    -DLIBDIR="\"c\"" \
    -DBUILDING_LIBICONV \
    -DIN_LIBRARY
LOCAL_C_INCLUDES :=$(LOCAL_PATH)
LOCAL_C_INCLUDES +=$(LOCAL_PATH)/include
LOCAL_C_INCLUDES +=$(LOCAL_PATH)/lib
LOCAL_C_INCLUDES +=$(LOCAL_PATH)/libcharset/include

LOCAL_SRC_FILES := $(LOCAL_PATH)/lib/iconv.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/lib/relocatable.c
LOCAL_SRC_FILES += $(LOCAL_PATH)/libcharset/lib/localcharset.c
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
include $(BUILD_STATIC_LIBRARY)
