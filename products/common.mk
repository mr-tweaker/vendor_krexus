# Generic product
PRODUCT_NAME := krexus
PRODUCT_BRAND := krexus
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.config.alarm_alert=Oxygen.ogg \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    ro.adb.secure=1 \
    ro.krexus.version=krexus_mm-caf-$(shell date +"%y%m%d")-$(TARGET_DEVICE)

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/krexus/overlay/common

# Bootanimation (add if it exists)
ifneq ($(wildcard vendor/krexus/prebuilt/bootanimation/$(TARGET_DEVICE).zip),)
PRODUCT_COPY_FILES += \
    vendor/krexus/prebuilt/bootanimation/$(TARGET_DEVICE).zip:system/media/bootanimation.zip
else
# otherwise use the default one
PRODUCT_COPY_FILES += \
    vendor/krexus/prebuilt/bootanimation/default.zip:system/media/bootanimation.zip
endif

# Extra Packages
PRODUCT_PACKAGES += \
    Busybox \
    Launcher3 \
    LiveWallpapersPicker \
    Stk \
    WallpaperPicker

# Latin IME lib (based on ARM architecture)
ifneq ($(filter arm,$(TARGET_ARCH)),)
PRODUCT_COPY_FILES += \
    vendor/krexus/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/krexus/prebuilt/common/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
endif

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Backuptool Support
PRODUCT_COPY_FILES += \
    vendor/krexus/prebuilt/common/addon.d/50-krexus.sh:system/addon.d/50-krexus.sh \
    vendor/krexus/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/krexus/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Misc packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    libemoji \
    libsepol \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    powertop \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace \
    libqdutils

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

#RCS //Needed for Contacts and Mms Apps
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_aidl_static \
    rcs_service_api \
    rcs_service_api.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/krexus/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/krexus/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += persist.sys.recovery_update=false

# init.d support
PRODUCT_COPY_FILES += \
    vendor/krexus/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/krexus/prebuilt/common/root/init.local.rc:root/init.local.rc \
    vendor/krexus/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner

$(call inherit-product-if-exists, vendor/extra/product.mk)
