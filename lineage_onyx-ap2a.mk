# Inherit everything from the base product
$(call inherit-product, device/xiaomi/onyx/lineage_onyx.mk)

# Override product name
PRODUCT_NAME := lineage_onyx-ap2a

# Ensure proper ROM naming
LINEAGE_VERSION := 20.0
LINEAGE_BUILD_TYPE := UNOFFICIAL

# Ravi's signature
BUILD_USERNAME := Ravi
BUILD_HOSTNAME := RaviBuild
BUILD_DISPLAY_ID := LineageOS_by_iRaviTiwari

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ravi.signature=Built_by_iRaviTiwari
