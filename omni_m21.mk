# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m21 device
$(call inherit-product, device/samsung/m21/device.mk)

PRODUCT_DEVICE := m21
PRODUCT_NAME := omni_m21
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy M21
PRODUCT_MANUFACTURER := samsung
