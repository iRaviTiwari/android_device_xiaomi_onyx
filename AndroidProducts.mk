# Register both product makefiles
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_onyx.mk \
    $(LOCAL_DIR)/lineage_onyx-ap2a.mk

# Define lunch combos for both variants
COMMON_LUNCH_CHOICES := \
    lineage_onyx-user \
    lineage_onyx-userdebug \
    lineage_onyx-eng \
    lineage_onyx-ap2a-user \
    lineage_onyx-ap2a-userdebug \
    lineage_onyx-ap2a-eng
