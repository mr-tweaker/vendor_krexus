# Inherit AOSP device configuration
$(call inherit-product, device/motorola/osprey/full_osprey.mk)

# Inherit common product files.
$(call inherit-product, vendor/krexus/products/common.mk)

# Inherit vendor specific product files.
#$(call inherit-product, vendor/krexus/products/vendorless.mk)

# Setup device specific product configuration.
PRODUCT_NAME := krexus_osprey
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := osprey
PRODUCT_MODEL := Moto G 2015
PRODUCT_MANUFACTURER := Motorola
