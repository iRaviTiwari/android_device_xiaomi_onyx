# BoardConfig.mk for Xiaomi Poco F7 (Onyx)

# Disable dexpreopt during bring-up
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

# Skip kernel build, use prebuilts
TARGET_NO_KERNEL := true

PRODUCT_COPY_FILES += \
    device/xiaomi/onyx/prebuilt/boot.img:boot.img \
    device/xiaomi/onyx/prebuilt/dtbo.img:dtbo.img

# Kernel (GKI base + Onyx vendor fragments)
TARGET_KERNEL_SOURCE := kernel/xiaomi/onyx

# Satisfy Lineage legacy kernel.mk requirement
TARGET_KERNEL_CONFIG := gki_defconfig

# Use GKI build flow
BOARD_USES_GENERIC_KERNEL_IMAGE := true

# Prefer GKI build scripts if supported by your build system
BOARD_KERNEL_BUILD_CONFIG := kernel/xiaomi/onyx/build.config.msm.onyx

# Vendor fragments (safe to keep; GKI scripts may also reference them internally)
TARGET_KERNEL_FRAGMENTS := \
    vendor/onyx_consolidate.config \
    vendor/onyx_perf.config

# Kernel image packaging
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Filesystem types (Android 13+ devices use EROFS for read-only partitions)
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := erofs

# Prebuilt vendor_dlkm image
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
BOARD_PREBUILT_VENDOR_DLKMIMAGE := vendor/xiaomi/onyx/prebuilt/vendor_dlkm.img

# Partition mount points
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm

# Static partitions (sizes from fastboot getvar)
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296        # 96 MB (boot_a)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600    # 100 MB (recovery_a)
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296 # 96 MB (vendor_boot_a)

# Dynamic partitions (inside super.img)
BOARD_SUPER_PARTITION_SIZE := 11811160064          # 0x2C0000000 from fastboot
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm system_ext
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 11811160064
# Dynamic partition sizes (from stock super.img)
BOARD_ODMIMAGE_PARTITION_SIZE := 1605406720
BOARD_SYSTEM_EXTIMAGE_PARTITION_SIZE := 474718208

# Vendor includes (keep last; re-assert critical vars if needed after include)
include vendor/xiaomi/onyx/BoardConfigVendor.mk
