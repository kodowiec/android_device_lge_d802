#
# Misc props for d802_tv
#

# Enable ADB on boot

PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1                                                    
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.debuggable=1
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
PRODUCT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0
    
# Enable Bluetooth Remote Pairing in Setupwraith
PRODUCT_PROPERTY_OVERRIDES += \
    atv.setup.bt_remote_pairing=true