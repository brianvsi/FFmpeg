LIB_PATH := $(abspath $(LOCAL_PATH)/ffmpegMain/android/arm)
LIB_LOCAL_PATH := $(abspath $(LOCAL_PATH)/obj/local/armeabi-v7a)

include $(CLEAR_VARS)
LOCAL_MODULE := libavcodec
LOCAL_SRC_FILES:= $(LIB_PATH)/lib/libavcodec.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavcodec-55
LOCAL_SRC_FILES:= $(LIB_PATH)/lib/libavcodec-55.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true 
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libavformat
LOCAL_SRC_FILES:= $(LIB_PATH)/lib/libavformat.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libavformat-55
LOCAL_SRC_FILES:= $(LIB_PATH)/lib/libavformat-55.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libswscale
LOCAL_SRC_FILES+= $(LIB_PATH)/lib/libswscale.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY) 

include $(CLEAR_VARS)
LOCAL_MODULE:= libswscale-2
LOCAL_SRC_FILES+= $(LIB_PATH)/lib/libswscale-2.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libavutil
LOCAL_SRC_FILES+= $(LIB_PATH)/lib/libavutil.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY) 

include $(CLEAR_VARS)
LOCAL_MODULE:= libavutil-52
LOCAL_SRC_FILES+= $(LIB_PATH)/lib/libavutil-52.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY)
 
include $(CLEAR_VARS)
LOCAL_MODULE:= libavfilter
LOCAL_SRC_FILES+= $(LIB_PATH)/lib/libavfilter.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libavfilter-4
LOCAL_SRC_FILES+= $(LIB_PATH)/lib/libavfilter-4.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY)
 
include $(CLEAR_VARS)
LOCAL_MODULE:= libswresample
LOCAL_SRC_FILES+= $(LIB_PATH)/lib/libswresample-0.so
LOCAL_EXPORT_C_INCLUDES := $(MAIN_PATH)
LOCAL_PRELINK_MODULE := true
include $(PREBUILT_SHARED_LIBRARY) 

####All the libraries compiled together
include $(CLEAR_VARS)
LOCAL_MODULE := libffmpeg 
LOCAL_SHARED_LIBRARIES += avutil-52 avfilter-4 avcodec-55 avcodec avformat-55  swscale-2 swresample
LOCAL_EXPORT_C_INCLUDES += $(MAIN_PATH)
LOCAL_EXPORT_LDLIBS += -L $(SYSROOT)/usr/lib -llog -ljnigraphics
include $(BUILD_STATIC_LIBRARY)
