$(call inherit-product, device/samsung/skyrocket/full_skyrocket.mk)

# Release name
PRODUCT_RELEASE_NAME := i727

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#copy boot animation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy kernel and modules
PRODUCT_COPY_FILES += \
	device/samsung/skyrocket/kernel/boot.img:system/slimkernel/boot.img \
	device/samsung/skyrocket/kernel/boot.img:kernel \
	device/samsung/skyrocket/kernel/system/lib/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/cls_flow.ko:system/lib/modules/cls_flow.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/dma_test.ko:system/lib/modules/dma_test.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/evbug.ko:system/lib/modules/evbug.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/gspca_main.ko:system/lib/modules/gpsca_main.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/ksapi.ko:system/lib/modules/ksapi.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/lcd.ko:system/lib/modules/lcd.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/msm_tsif.ko:system/lib/modules/msm_tsif.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/qce.ko:system/lib/modules/qce.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/qcedev.ko:system/lib/modules/qcedev.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/sch_dsmark.ko:system/lib/modules/sch_dsmark.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/spidev.ko:system/lib/modules/spidev.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/tsif_chrdev.ko:system/lib/modules/tsif_chrdev.ko \
	device/samsung/skyrocket/kernel/system/lib/modules/vibrator.ko:system/lib/modules/vibrator.ko \
	device/samsung/skyrocket/kernel/system/lib/hw/lights.msm8660.so:system/lib/hw/lights.msm8660.so

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I727 TARGET_DEVICE=SGH-I727 BUILD_FINGERPRINT="samsung/SGH-I727/SGH-I727:4.11/IMM76D/UCLF6:user/release-keys" PRIVATE_BUILD_DESC="SGH-I727-user 4.1.1 IMM76D UCLF6 release-keys"

#TARGET_BOOTANIMATION_NAME := vertical-800x1280

PRODUCT_NAME := slim_skyrocket
PRODUCT_DEVICE := skyrocket

