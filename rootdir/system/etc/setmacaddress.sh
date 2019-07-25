#!/system/bin/sh

/system/bin/updatemiscta

wifimacstring=`getprop ro.boot.wifi.mac`
btmacstring=`getprop ro.boot.bt.mac`

    echo $wifimacstring >  /sys/devices/fb000000.qcom,wcnss-wlan/wcnss_mac_addr
    echo $btmacstring >  /data/misc/bluetooth/bluetooth_bdaddr

exit 0
