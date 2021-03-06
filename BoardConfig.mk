# inherit from the proprietary version
-include vendor/htc/a11/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm8226

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_ARCH_VARIANT_CPU := generic
TARGET_CPU_ABI := arm64-v8a

TARGET_2ND_ARCH := arm
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

ifdef TARGET_BUILD_APPS
# DO NOT USE
# DO NOT USE
#
# This architecture / CPU variant must NOT be used for any 64 bit
# platform builds. It is the lowest common denominator required
# to build an unbundled application for all supported 32 and 64 bit
# platforms.
#
# If you're building a 64 bit platform (and not an application) the
# ARM-v8 specification allows you to assume NEON and all the features
# available in a cortex-A15 CPU. You should be able to set :
#
# TARGET_2ND_ARCH_VARIANT := armv7-a-neon
# TARGET_2ND_CPU_VARIANT := cortex-a15
#
# DO NOT USE
# DO NOT USE
TARGET_2ND_ARCH_VARIANT := armv7-a
# DO NOT USE
# DO NOT USE
TARGET_2ND_CPU_VARIANT := generic
# DO NOT USE
# DO NOT USE
else
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := cortex-a15
endif

TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8226

BOARD_KERNEL_CMDLINE := "console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci"
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02008000 --dt device/htc/a11/dt.img --tags_offset 0x01e00000

TARGET_PREBUILT_KERNEL := device/htc/a11/zImage

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xa8000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x58000000
BOARD_FLASH_BLOCK_SIZE := 512

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

#TWRP config:
DEVICE_RESOLUTION := 480x854
TW_NO_USB_STORAGE := true
TW_NO_SCREEN_BLANK := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"
