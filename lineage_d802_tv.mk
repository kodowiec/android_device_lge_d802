# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d802/d802.mk)

# Inherit ATV stuff
$(call inherit-product, device/google/atv/products/atv_base.mk)
$(call inherit-product, device/lineage/atv/lineage_atv.mk)

# Setup TV Build
PRODUCT_IS_ATV := true
USE_OEM_TV_APP := true
PRODUCT_CHARACTERISTICS := tv
PRODUCT_AAPT_PREF_CONFIG := xhdpi

#TARGET_BOOTANIMATION_HALF_RES := true
#TARGET_SCREEN_HEIGHT := 1920
#TARGET_SCREEN_WIDTH := 1080

PRODUCT_COPY_FILES +=\
    $(LOCAL_PATH)/d802_tv/permissions/privapp-permissions-atv-misc.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-atv-misc.xml
PRODUCT_COPY_FILES +=\
    $(LOCAL_PATH)/d802_tv/permissions/privapp_whitelist_com.google.android.tungsten.setupwraith.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp_whitelist_com.google.android.tungsten.setupwraith.xml
PRODUCT_COPY_FILES +=\
    $(LOCAL_PATH)/d802_tv/permissions/tv_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/tv_core_hardware.xml

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/d802_tv/overlay


PRODUCT_PACKAGES += \
    LeanbackIME \
    google-tv-pairing-protocol \
    TvProvision \
    LeanbackSampleApp \
    TvSampleLeanbackLauncher 

    
include $(LOCAL_PATH)/d802_tv/props.mk


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d802
PRODUCT_NAME := lineage_d802_tv
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-D802
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="g2_open_com-user 5.0.2 LRX22G 151061918340a release-keys"

BUILD_FINGERPRINT := lge/g2_open_com/g2:5.0.2/LRX22G/151061918340a:user/release-keys
