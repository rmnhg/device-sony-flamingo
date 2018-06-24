# Kernel informations
BOARD_KERNEL_CMDLINE += androidboot.hardware=flamingo
BOARD_KERNEL_IMAGE_NAME := zImage

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/sony/msm8226
TARGET_KERNEL_CONFIG := aosp_yukon_flamingo_defconfig
