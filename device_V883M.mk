$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/ZTE/V883M/V883M-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/ZTE/V883M/overlay

LOCAL_PATH := device/ZTE/V883M
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# recovery
PRODUCT_COPY_FILES += \
    device/ZTE/V883M/recovery/fstab:recovery/root/fstab \
    device/ZTE/V883M/recovery/ueventd.rc:recovery/root/ueventd.rc

PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_V883M
PRODUCT_DEVICE := V883M
