# Platform
DEVICE_PATH := device/samsung/m21
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g72
TARGET_SOC := exynos9611
TARGET_BOOTLOADER_BOARD_NAME := universal9611
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73
TARGET_CPU_SMP := true

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Build vars
TARGET_SUPPORTS_64_BIT_APPS := true
ALLOW_MISSING_DEPENDENCIES := true
TARGET_COPY_OUT_VENDOR := vendor

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/Image

BOARD_KERNEL_CMDLINE := androidboot.hardware=universal9611
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 2 --board SRPSL26A002RU

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 169
TW_Y_OFFSET := 84
TW_H_OFFSET := -84
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXTRA_LANGUAGES := true
#TW_EXCLUDE_DEFAULT_USB_INIT := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/dtbo
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# SHRP Flags
SHRP_PATH := device/samsung/m21nsxx
SHRP_MAINTAINER := soulr344
SHRP_DEVICE_CODE := m21nsxx
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := /sys/devices/virtual/camera/flash/rear_flash
SHRP_FONP_2 := 
SHRP_FONP_3 := 
SHRP_FLASH_MAX_BRIGHTNESS := 1
SHRP_REC := /dev/block/by-name/recovery
SHRP_AB := false
SHRP_REC_TYPE := SAR
SHRP_DEVICE_TYPE := A_Only
SHRP_STATUSBAR_RIGHT_PADDING := 40
SHRP_STATUSBAR_LEFT_PADDING := 40
SHRP_EXPRESS := true
SHRP_OFFICIAL := true
SHRP_DARK := true
SHRP_ALT_REBOOT := true
TW_EXCLUDE_NANO := true
TW_USE_SAMSUNG_HAPTICS := true

PLATFORM_SECURITY_PATCH := 2023-01-01

PLATFORM_VERSION := 12

BOARD_KERNEL_IMAGE_NAME := Image

# Dynamic Partition handling flags

# Makes twrp ignore "unable to update logical partition" error
IGNORE_UPDATE_LOGICAL_PARTITION_ERROR := true

# lets the dynamic partitions be wipable/resizable in twrp > wipe
ALLOW_LOGICAL_PARTITION_WIPE := true

# these dynamic partitions will get mounted as rw
BOARD_RW_DYNAMIC_PARTITIONS_LIST := \
    system \
    vendor \
    product \
    odm
