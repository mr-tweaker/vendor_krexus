# Inherit device configuration.
$(call inherit-product, device/motorola/condor/full_condor.mk)

# Inherit common product files.
$(call inherit-product, vendor/krexus/products/common.mk)

# Inherit vendor specific product files.
$(call inherit-product, vendor/krexus/products/vendorless.mk)

# Inherit maintainer information (if exists).
$(call inherit-product-if-exists, device/motorola/condor/krexus_maintainer.mk)

# Setup device specific product configuration.
PRODUCT_NAME := krexus_condor
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := condor
PRODUCT_MODEL := Moto E
PRODUCT_MANUFACTURER := Motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=condor
