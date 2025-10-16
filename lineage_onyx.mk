# Inherit common LineageOS configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device-specific configuration
$(call inherit-product, device/xiaomi/onyx/device.mk)

# Inherit vendor blobs
$(call inherit-product, vendor/xiaomi/onyx/vendor.mk)

# Device identifiers
PRODUCT_NAME := lineage_onyx
PRODUCT_DEVICE := onyx
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F7
PRODUCT_MANUFACTURER := Xiaomi
# Add release name so AOSP lunch 3-part format accepts it
PRODUCT_RELEASE_NAME := trunk_staging



# Ensure proper ROM naming
LINEAGE_VERSION := 20.0
LINEAGE_BUILD_TYPE := UNOFFICIAL
TARGET_DEVICE := onyx

# Ravi's signature
BUILD_USERNAME := Ravi
BUILD_HOSTNAME := RaviBuild
BUILD_DISPLAY_ID := LineageOS_by_iRaviTiwari


PRODUCT_PROPERTY_OVERRIDES += \
    ro.ravi.signature=Built_by_iRaviTiwari

