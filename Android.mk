PREBUILT_PATH := $(call my-dir)
LOCAL_PATH := $(PREBUILT_PATH)

include $(CLEAR_VARS)
LOCAL_MODULE        := qcrilmsgtunnel
LOCAL_MODULE_OWNER  := qcom
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE_SUFFIX := .apk
LOCAL_SRC_FILES     := priv-app/qcrilmsgtunnel/qcrilmsgtunnel.apk
LOCAL_MODULE_PATH   := $(PRODUCT_OUT)/system/priv-app
include $(BUILD_PREBUILT)

ifneq ($(BUILD_TINY_ANDROID),true)

include $(CLEAR_VARS)
LOCAL_MODULE := qdcm_calib_data_samsung_s6e3fa3_1080p_cmd_mode_dsi_panel.xml
LOCAL_MODULE_OWNER :=oem
LOCAL_SRC_FILES := etc/qdcm_calib_data_samsung_s6e3fa3_1080p_cmd_mode_dsi_panel.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := DATA
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc
include $(BUILD_PREBUILT)


#LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := qdcm_calib_data_samsung_s6e3fa3_1080p_video_mode_dsi_panel.xml
LOCAL_MODULE_OWNER :=oem
LOCAL_SRC_FILES := etc/qdcm_calib_data_samsung_s6e3fa3_1080p_video_mode_dsi_panel.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := DATA
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc
include $(BUILD_PREBUILT)

endif #TINY_ANDROID

include $(CLEAR_VARS)
LOCAL_MODULE := dsi_config.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc/data
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := etc/data/dsi_config.xml
LOCAL_MODULE_OWNER := qti
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := netmgr_config.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc/data
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := etc/data/netmgr_config.xml
LOCAL_MODULE_OWNER := qti
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qmi_config.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/etc/data
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := etc/data/qmi_config.xml
LOCAL_MODULE_OWNER := qti
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := libaudioalsa
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE  := false
LOCAL_MULTILIB      := 64
LOCAL_MODULE_OWNER  := qcom
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := vendor/lib64/libaudioalsa.so
LOCAL_MODULE_PATH   := $(PRODUCT_OUT)/system/vendor/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := libaudioalsa
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE  := false
LOCAL_MULTILIB      := 32
LOCAL_MODULE_OWNER  := qcom
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := vendor/lib/libaudioalsa.so
LOCAL_MODULE_PATH   := $(PRODUCT_OUT)/system/vendor/lib
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := dashd
LOCAL_MODULE_CLASS  := EXECUTABLES
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := sbin/dashd
LOCAL_MODULE_PATH   := $(TARGET_ROOT_OUT_SBIN)
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)
include $(BUILD_PREBUILT)

$(shell rm -rf $(TARGET_OUT)/rfs/)

$(shell mkdir -p $(TARGET_OUT)/rfs/msm/mpss/readonly)
$(shell mkdir -p $(TARGET_OUT)/rfs/msm/adsp/readonly)
$(shell ln -s /data/tombstones/modem $(TARGET_OUT)/rfs/msm/mpss/ramdumps)
$(shell ln -s /persist/rfs/msm/mpss $(TARGET_OUT)/rfs/msm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/msm/mpss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/msm/mpss/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/msm/mpss/readonly/firmware)
$(shell ln -s /data/tombstones/lpass $(TARGET_OUT)/rfs/msm/adsp/ramdumps)
$(shell ln -s /persist/rfs/msm/adsp $(TARGET_OUT)/rfs/msm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/msm/adsp/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/msm/adsp/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/msm/adsp/readonly/firmware)
$(shell mkdir -p $(TARGET_OUT)/rfs/mdm/mpss/readonly)
$(shell mkdir -p $(TARGET_OUT)/rfs/mdm/adsp/readonly)
$(shell mkdir -p $(TARGET_OUT)/rfs/mdm/sparrow/readonly)
$(shell ln -s /data/tombstones/modem $(TARGET_OUT)/rfs/mdm/mpss/ramdumps)
$(shell ln -s /persist/rfs/mdm/mpss $(TARGET_OUT)/rfs/mdm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/mdm/mpss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/mdm/mpss/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/mdm/mpss/readonly/firmware)
$(shell ln -s /data/tombstones/lpass $(TARGET_OUT)/rfs/mdm/adsp/ramdumps)
$(shell ln -s /persist/rfs/mdm/adsp $(TARGET_OUT)/rfs/mdm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/mdm/adsp/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/mdm/adsp/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/mdm/adsp/readonly/firmware)
$(shell ln -s /data/tombstones/sparrow $(TARGET_OUT)/rfs/mdm/sparrow/ramdumps)
$(shell ln -s /persist/rfs/mdm/sparrow $(TARGET_OUT)/rfs/mdm/sparrow/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/mdm/sparrow/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/mdm/sparrow/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/mdm/sparrow/readonly/firmware)
$(shell mkdir -p $(TARGET_OUT)/rfs/apq/gnss/readonly)
$(shell ln -s /data/tombstones/modem $(TARGET_OUT)/rfs/apq/gnss/ramdumps)
$(shell ln -s /persist/rfs/apq/gnss $(TARGET_OUT)/rfs/apq/gnss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/apq/gnss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/apq/gnss/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/apq/gnss/readonly/firmware)

$(shell mkdir -p $(TARGET_OUT)/rfs/msm/mpss/readonly)
$(shell mkdir -p $(TARGET_OUT)/rfs/msm/adsp/readonly)
$(shell ln -s /data/tombstones/modem $(TARGET_OUT)/rfs/msm/mpss/ramdumps)
$(shell ln -s /persist/rfs/msm/mpss $(TARGET_OUT)/rfs/msm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/msm/mpss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/msm/mpss/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/msm/mpss/readonly/firmware)
$(shell ln -s /data/tombstones/lpass $(TARGET_OUT)/rfs/msm/adsp/ramdumps)
$(shell ln -s /persist/rfs/msm/adsp $(TARGET_OUT)/rfs/msm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/msm/adsp/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/msm/adsp/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/msm/adsp/readonly/firmware)
$(shell mkdir -p $(TARGET_OUT)/rfs/mdm/mpss/readonly)
$(shell mkdir -p $(TARGET_OUT)/rfs/mdm/adsp/readonly)
$(shell mkdir -p $(TARGET_OUT)/rfs/mdm/sparrow/readonly)
$(shell ln -s /data/tombstones/modem $(TARGET_OUT)/rfs/mdm/mpss/ramdumps)
$(shell ln -s /persist/rfs/mdm/mpss $(TARGET_OUT)/rfs/mdm/mpss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/mdm/mpss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/mdm/mpss/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/mdm/mpss/readonly/firmware)
$(shell ln -s /data/tombstones/lpass $(TARGET_OUT)/rfs/mdm/adsp/ramdumps)
$(shell ln -s /persist/rfs/mdm/adsp $(TARGET_OUT)/rfs/mdm/adsp/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/mdm/adsp/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/mdm/adsp/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/mdm/adsp/readonly/firmware)
$(shell ln -s /data/tombstones/sparrow $(TARGET_OUT)/rfs/mdm/sparrow/ramdumps)
$(shell ln -s /persist/rfs/mdm/sparrow $(TARGET_OUT)/rfs/mdm/sparrow/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/mdm/sparrow/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/mdm/sparrow/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/mdm/sparrow/readonly/firmware)
$(shell mkdir -p $(TARGET_OUT)/rfs/apq/gnss/readonly)
$(shell ln -s /data/tombstones/modem $(TARGET_OUT)/rfs/apq/gnss/ramdumps)
$(shell ln -s /persist/rfs/apq/gnss $(TARGET_OUT)/rfs/apq/gnss/readwrite)
$(shell ln -s /persist/rfs/shared $(TARGET_OUT)/rfs/apq/gnss/shared)
$(shell ln -s /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/apq/gnss/hlos)
$(shell ln -s /firmware $(TARGET_OUT)/rfs/apq/gnss/readonly/firmware)

$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib/egl && pushd $(PRODUCT_OUT)/system/vendor/lib > /dev/null && ln -s egl/libEGL_adreno.so libEGL_adreno.so && popd > /dev/null)

$(shell mkdir -p $(PRODUCT_OUT)/system/vendor/lib64/egl && pushd $(PRODUCT_OUT)/system/vendor/lib64 > /dev/null && ln -s egl/libEGL_adreno.so libEGL_adreno.so && popd > /dev/null)

$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wcd9320; \
        ln -sf /data/misc/audio/wcd9320_anc.bin \
                $(TARGET_OUT)/etc/firmware/wcd9320/wcd9320_anc.bin;\
        ln -s /data/misc/audio/mbhc.bin \
                $(TARGET_OUT)/etc/firmware/wcd9320/wcd9320_mbhc.bin; \
        ln -s /data/misc/audio/wcd9320_mad_audio.bin \
$(TARGET_OUT)/etc/firmware/wcd9320/wcd9320_mad_audio.bin)
