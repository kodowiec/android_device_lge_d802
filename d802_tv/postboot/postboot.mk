## POSTBOOT

include $(call all-makefiles-under, device/lge/d802/d802_tv/initfiles)

PRODUCT_COPY_FILES += \
    device/lge/d802/d802_tv/initfiles/init.misc.d802.atv.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/init.misc.d802.atv.rc

PRODUCT_PACKAGES += \
    init.misc.d802.atv.rc

PRODUCT_COPY_FILES += \
    device/lge/d802/d802_tv/postboot/postboot:$(TARGET_COPY_OUT_SYSTEM)/bin/postboot
