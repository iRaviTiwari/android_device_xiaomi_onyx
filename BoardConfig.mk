# BoardConfig.mk for Xiaomi Poco F7 (Onyx)
WITH_DEXPREOPT := false

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a76
TARGET_CPU_ABI := arm64-v8a

# App ABI support
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_SUPPORTS_32_BIT_APPS := true

# Secondary architecture (32-bit)
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_VARIANT := cortex-a55
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

# Bootloader / Platform
TARGET_BOOTLOADER_BOARD_NAME := onyx
TARGET_NO_BOOTLOADER := true

# Display (Poco F7 1264x2772 AMOLED)
TARGET_SCREEN_WIDTH := 1264
TARGET_SCREEN_HEIGHT := 2772
TARGET_SCREEN_DENSITY := 480    # Android density for bootanimation, not physical ppi

# Battery (India variant)
BOARD_BATTERY_CAPACITY := 7550

# Kernel (placeholders — update to actual paths/defconfig)
TARGET_KERNEL_SOURCE := kernel/xiaomi/onyx
TARGET_KERNEL_CONFIG := onyx_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096

# File system types (Android 13+ devices use EROFS for read-only partitions)
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := erofs
# Use prebuilt vendor_dlkm image
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
BOARD_PREBUILT_VENDOR_DLKMIMAGE := vendor/xiaomi/onyx/prebuilt/vendor_dlkm.img

# Partition mount points (copy-out targets)
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm

# Partitions (placeholder sizes — verify via fastboot getvar)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

# Vendor includes (keep last; re-assert critical vars if needed after include)
include vendor/xiaomi/onyx/BoardConfigVendor.mk

# Re-assert critical vars in case vendor overrides
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm

# Re‑assert display vars to silence bootanimation warning
TARGET_SCREEN_WIDTH := 1264
TARGET_SCREEN_HEIGHT := 2772
TARGET_SCREEN_DENSITY := 480
