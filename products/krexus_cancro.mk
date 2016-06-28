# Inherit device configuration.
$(call inherit-product, device/xiaomi/cancro/full_cancro.mk)

# Inherit common product files.
$(call inherit-product, vendor/krexus/products/common.mk)

# Inherit vendor specific product files.
$(call inherit-product, vendor/krexus/products/vendorless.mk)

# Inherit maintainer information (if exists).
$(call inherit-product-if-exists, device/xiaomi/cancro/krexus_maintainer.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := cancro
PRODUCT_NAME := krexus_cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI Cancro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cancro
