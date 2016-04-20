# Inherit device configuration.
$(call inherit-product, device/motorola/osprey/full_osprey.mk)

# Inherit common product files.
$(call inherit-product, vendor/krexus/products/common.mk)

# Inherit vendor specific product files.
$(call inherit-product, vendor/krexus/products/vendorless.mk)

# Inherit maintainer information (if exists).
$(call inherit-product-if-exists, device/motorola/osprey/krexus_maintainer.mk)

# Setup device specific product configuration.
PRODUCT_NAME := krexus_osprey
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := osprey
PRODUCT_MODEL := Moto G 2015
PRODUCT_MANUFACTURER := Motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=osprey
