# Inherit device configuration.
$(call inherit-product, device/motorola/lux/full_lux.mk)

# Inherit common product files.
$(call inherit-product, vendor/krexus/products/common.mk)

# Inherit vendor specific product files.
$(call inherit-product, vendor/krexus/products/vendorless.mk)

# Setup device specific product configuration.
PRODUCT_NAME := krexus_lux
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := lux
PRODUCT_MODEL := Moto X Play
PRODUCT_MANUFACTURER := Motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lux
