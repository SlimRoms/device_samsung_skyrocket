$(call inherit-product, device/samsung/skyrocket/full_skyrocket.mk)

# Release name
PRODUCT_RELEASE_NAME := i727

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

#copy boot animation
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy 00check
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I727 TARGET_DEVICE=SGH-I727 BUILD_FINGERPRINT="samsung/SGH-I727/SGH-I727:4.1.2/IMM76D/UCLI3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I727-user 4.1.2 IMM76D UCLI3 release-keys"

PRODUCT_NAME := slim_skyrocket
PRODUCT_DEVICE := skyrocket

