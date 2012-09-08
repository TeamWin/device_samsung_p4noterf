USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/p4noterf/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := smdk4x12

# Platform
TARGET_BOARD_PLATFORM := exynos4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
EXYNOS4210_ENHANCEMENTS := true

ifdef EXYNOS4210_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DEXYNOS4210_ENHANCEMENTS
COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
endif

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_SOC := exynos4210
#TARGET_SOC := exynos4x12
TARGET_HAL_PATH := hardware/samsung/exynos4/hal

BOARD_KERNEL_CMDLINE :=  console=ttyHSL0,115200,n8 androidboot.hardware=jet
BOARD_KERNEL_BASE :=  0x10000000
BOARD_FORCE_RAMDISK_ADDRESS := 0x285212672
BOARD_KERNEL_PAGESIZE := 2048

# These, I'm sure, are all WRONG!
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/p4noterf/kernAl

# Recovery:Start

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery: set depending on recovery being built for. (CWM or TWRP)
#           both init scripts can be found in the recovery folder
TARGET_RECOVERY_INITRC := device/samsung/p4noterf/recovery/init.rc

# TWRP specific build flags
DEVICE_RESOLUTION := 1280x800
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TW_NO_USB_STORAGE := true
TWRP_EVENT_LOGGING := true

