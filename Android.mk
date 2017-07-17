LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := iconv
LOCAL_CFLAGS    := \
    -Wno-multichar \
    -D_ANDROID \
    -DLIBDIR="\"c\"" \
    -DBUILDING_LIBICONV \
    -DIN_LIBRARY
LOCAL_C_INCLUDES := \
    ../libiconv \
    ../libiconv/include \
    ../libiconv/lib \
    ../libiconv/libcharset/include
LOCAL_SRC_FILES := \
    ../libiconv/lib/iconv.c \
    ../libiconv/lib/relocatable.c \
    ../libiconv/libcharset/lib/localcharset.c
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
include $(BUILD_SHARED_LIBRARY)
