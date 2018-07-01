#!/sbin/busybox sh

export BOOTREC_CACHE_NODE="/dev/block/mmcblk0p23 b 179 23"
export BOOTREC_CACHE="/dev/block/mmcblk0p23"
export BOOTREC_DATA_NODE="/dev/block/mmcblk0p24 b 179 24"
export BOOTREC_DATA="/dev/block/mmcblk0p24"
export BOOTREC_FOTA_NODE="/dev/block/mmcblk0p18 b 179 18"
export BOOTREC_FOTA="/dev/block/mmcblk0p18"
export BOOTREC_EVENT_NODE="/dev/input/event2 c 13 66"
export BOOTREC_EVENT="/dev/input/event2"
export BOOTREC_LED_RED="/sys/class/leds/led:rgb_red/brightness"
export BOOTREC_LED_GREEN="/sys/class/leds/led:rgb_green/brightness"
export BOOTREC_LED_BLUE="/sys/class/leds/led:rgb_blue/brightness"
export BOOTREC_VIBRATOR="/sys/class/timed_output/vibrator/enable"
