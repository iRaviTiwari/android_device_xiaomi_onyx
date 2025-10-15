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
