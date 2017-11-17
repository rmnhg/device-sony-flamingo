#include <stdlib.h>

const char *mr_init_devices[] =
{
    "/sys/devices/virtual/graphics/fb0",

    //Devices
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p*",

    "/sys/bus/mmc",
    "/sys/bus/mmc/drivers/mmcblk",
    "/sys/bus/sdio",

    //ADB
    "/sys/devices/virtual/misc/android_adb",
    "/sys/devices/virtual/android_usb/android0/f_adb",
    "/sys/bus/usb"

    //USB
    "/sys/devices/platform/msm_hsusb_host",
    "/sys/bus/platform/drivers/msm_hsusb_host",

    //Input
    "/sys/devices/virtual/input",
    "/sys/devices/virtual/misc/uinput",
    "/sys/devices/pci0000:00/0000:00:15.1/i2c_designware.1/i2c-6/i2c-ELAN1200:00/0018:04F3:301A.0001/input/input16/mouse0",
    "/sys/devices/pci0000:00/0000:00:15.1/i2c_designware.1/i2c-6/i2c-ELAN1200:00/0018:04F3:301A.0001/input/input16/event15",
    "/sys/devices/pci0000:00/0000:00:15.1/i2c_designware.1/i2c-6/i2c-ELAN1200:00/0018:04F3:301A.0001/input/input16",
    ...
    NULL // must be NULL-terminated
}
