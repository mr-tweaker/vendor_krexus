# Inherit device configuration.
$(call inherit-product, device/oneplus/oneplus2/full_oneplus2.mk)

# Inherit common product files.
$(call inherit-product, vendor/krexus/products/common.mk)

# Inherit vendor specific product files.
$(call inherit-product, vendor/krexus/products/vendorless.mk)

# Inherit maintainer information (if exists).
$(call inherit-product-if-exists, device/oneplus/oneplus2/krexus_maintainer.mk)

PRODUCT_NAME := krexus_oneplus2
PRODUCT_BRAND := oneplus
PRODUCT_DEVICE := oneplus2
PRODUCT_MODEL := oneplus2
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oneplus2
