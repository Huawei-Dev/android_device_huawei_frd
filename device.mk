#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/huawei/frd/frd-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Media configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/prebuilts/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Audio configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilts/audio_policy.conf:system/etc/audio_policy.conf

# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/chargemonitor_config.xml:system/etc/chargemonitor_config.xml \
    $(LOCAL_PATH)/prebuilts/clatd.conf:system/etc/clatd.conf \
    $(LOCAL_PATH)/prebuilts/device_monitor_for_nff.conf:system/etc/device_monitor_for_nff.conf \
    $(LOCAL_PATH)/prebuilts/device_state_monitor.conf:system/etc/device_state_monitor.conf \
    $(LOCAL_PATH)/prebuilts/factory_modem.cfg:system/etc/factory_modem.cfg \
    $(LOCAL_PATH)/prebuilts/lhd.conf:system/etc/lhd.conf \
    $(LOCAL_PATH)/prebuilts/lhd_beta.conf:system/etc/lhd_beta.conf \
    $(LOCAL_PATH)/prebuilts/topazhp.cfg:system/etc/topazhp.cfg \
    $(LOCAL_PATH)/prebuilts/vdec_atlas.cfg:system/etc/vdec_atlas.cfg \
    $(LOCAL_PATH)/prebuilts/viacbp82d_log.bcfg:system/etc/viacbp82d_log.bcfg \
    $(LOCAL_PATH)/prebuilts/viacbp82d_shutdown_log.bcfg:system/etc/viacbp82d_shutdown_log.bcfg

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/prebuilts/gps4774.conf:system/etc/gps4774.conf \
    $(LOCAL_PATH)/prebuilts/gps4774config.xml:system/etc/gps4774config.xml \
    $(LOCAL_PATH)/prebuilts/gps4774config_beta.xml:system/etc/gps4774config_beta.xml \
    $(LOCAL_PATH)/prebuilts/gps4774config_cl.xml:system/etc/gps4774config_cl.xml \
    $(LOCAL_PATH)/prebuilts/gps4774config_cl_beta.xml:system/etc/gps4774config_cl_beta.xml \
    $(LOCAL_PATH)/prebuilts/gps_restrict_blacklist.xml:system/etc/gps_restrict_blacklist.xml \
    $(LOCAL_PATH)/prebuilts/libgps4774.conf:system/etc/libgps4774.conf \
    $(LOCAL_PATH)/prebuilts/SensorHub.patch:system/etc/SensorHub.patch

# Thermal engine
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/poweroff_thermald.xml:system/etc/poweroff_thermald.xml \
    $(LOCAL_PATH)/prebuilts/temperaturemonitor_setting.xml:system/etc/temperaturemonitor_setting.xml \
    $(LOCAL_PATH)/prebuilts/thermald.xml:system/etc/thermald.xml \
    $(LOCAL_PATH)/prebuilts/thermald_performance.xml:system/etc/thermald_performance.xml \
    $(LOCAL_PATH)/prebuilts/thermald_performance_qcoff.xml:system/etc/thermald_performance_qcoff.xml \
    $(LOCAL_PATH)/prebuilts/thermald_qcoff.xml:system/etc/thermald_qcoff.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_postprocessing.xml:system/etc/permissions/android.hardware.camera.manual_postprocessing.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_TAGS += dalvik.gc.type-precise

# Audio
PRODUCT_PACKAGES += \
    audio.primary.default \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudioutils \
    libaudioroute \
    libtinyalsa \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo

# Bluedroid conf
PRODUCT_PACKAGES += \
    libbt-vendor \
    bt_vendor.conf

# Fingerprint sensor
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/fingerprint.idc:system/usr/idc/fingerprint.idc

PRODUCT_PACKAGES += \
    fingerprint.kl \

# Gello
PRODUCT_PACKAGES += \
    Gello

# KEYPAD
PRODUCT_PACKAGES += \
    usbaudio.kl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
    $(LOCAL_PATH)/prebuilts/HUAWEI_HUAWEI_GLASS.idc:system/usr/idc/HUAWEI_HUAWEI_GLASS.idc

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.hi3650 \
    init.chip.usb.rc \
    init.hi3650.gps.rc \
    init.hi3650.power.rc \
    init.hi3650.power.sh \
    init.hi3650.rc \
    init.hi3650.usb.rc \
    init.rc \
    ueventd.hi3650.rc

# LIBShim
PRODUCT_PACKAGES += \
    libshim_gralloc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.subproduct=F2FS \
    ro.magic.api.version=0.1 \
    ro.enable_boot_charger_mode=0 \
    persist.sys.root_access=1 \
    persist.sys.usb.config=adb \
    persist.service.adb.enable=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=0 \
    persist.sys.root_access=1

# HWC
#PRODUCT_PACKAGES += \
#    hwcomposer.hi3650

# Power HAL
PRODUCT_PACKAGES += \
    power.hi3650

# LTE, CDMA, GSM/WCDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril.config=simactivation

# Sdcardfs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# NFC
#PRODUCT_PACKAGES += \
#    libnfc-nci \
#    libnfc_nci_jni \
#    com.android.nfc_extras \
#    nfc_nci.pn54x.default \
#    NfcNci \
#    Tag

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/prebuilts/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
#    $(LOCAL_PATH)/prebuilts/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
#    $(LOCAL_PATH)/prebuilts/nfcee_access.xml:system/etc/nfcee_access.xml

#PRODUCT_COPY_FILES += \
#    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
#    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
#    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
#    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
#    packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    libwpa_client \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
