# Partitions informations
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1782579200
#Reserve space for data encryption (1879030784-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1879014400

# Partitions types
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true