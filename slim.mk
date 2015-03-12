# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit device configuration
$(call inherit-product, device/samsung/skyrocket/full_skyrocket.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Release name
PRODUCT_RELEASE_NAME := skyrocket

# Device identifier
PRODUCT_NAME := slim_skyrocket
PRODUCT_DEVICE := skyrocket

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I727 TARGET_DEVICE=SGH-I727 BUILD_FINGERPRINT="samsung/SGH-I727/SGH-I727:5.0.2/LRX22G/I727UCMC1:user/release-keys" PRIVATE_BUILD_DESC="SGH-I727-user 5.0.2 LRX22G I727UCMC1 release-keys"
