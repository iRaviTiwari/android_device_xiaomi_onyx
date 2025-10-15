# device/xiaomi/onyx/device.mk

# Inherit from core product definitions
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit vendor blobs
$(call inherit-product, vendor/xiaomi/onyx/vendor.mk)

# Device identifier
PRODUCT_DEVICE := onyx
PRODUCT_NAME := lineage_onyx
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Turbo 4 Pro
PRODUCT_MANUFACTURER := Xiaomi

# Exclude AuthGraph/DICE test packages (not needed for device builds)
PRODUCT_PACKAGES := $(filter-out \
    framework-virtualization \
    MicrodroidHostTestCases \
    libauthgraph_core_test \
    libauthgraph_boringssl_test \
    libauthgraph_wire_test \
    , $(PRODUCT_PACKAGES))

# Exclude AVF/generic image targets
PRODUCT_PACKAGES -= aosp_shared_system_image

# Exclude Trusty LK ELF gen targets (they drag virtualization backends)
PRODUCT_PACKAGES -= trusty-arm64.lk.elf.gen
PRODUCT_PACKAGES -= trusty-x86_64.lk.elf.gen
PRODUCT_PACKAGES -= trusty-arm64-virt-test-debug.lk.elf.gen
PRODUCT_PACKAGES -= trusty-x86_64-test.lk.elf.gen

# --- Nuke AVF / Trusty / generic image pull-ins ---
PRODUCT_PACKAGES -= aosp_shared_system_image
PRODUCT_PACKAGES -= AvfRkpdAppIntegrationTests
PRODUCT_PACKAGES -= trusty-arm64.lk.elf.gen
PRODUCT_PACKAGES -= trusty-x86_64.lk.elf.gen
PRODUCT_PACKAGES -= trusty-arm64-virt-test-debug.lk.elf.gen
PRODUCT_PACKAGES -= trusty-x86_64-test.lk.elf.gen
# ---------------------------------------------------
