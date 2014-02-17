## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := V883M

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/ZTE/V883M/device_V883M.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := V883M
PRODUCT_NAME := cm_V883M
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := V883M
PRODUCT_MANUFACTURER := ZTE
