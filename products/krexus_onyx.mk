# Inherit device configuration.
$(call inherit-product, device/oneplus/onyx/aosp_onyx.mk)

# Inherit common product files.
$(call inherit-product, vendor/krexus/products/common.mk)

# Inherit vendor specific product files.
$(call inherit-product, vendor/krexus/products/vendorless.mk)

# Inherit maintainer information (if exists).
$(call inherit-product-if-exists, device/oneplus/onyx/krexus_maintainer.mk)

# Setup device specific product configuration.
PRODUCT_NAME := krexus_onyx
PRODUCT_BRAND := oneplus
PRODUCT_DEVICE := onyx
PRODUCT_MODEL := OnePlus X
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=onyx
