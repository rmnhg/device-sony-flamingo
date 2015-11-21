/*
 * Copyright (C) 2015 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef __TA_MISC_DATA_H__
#define __TA_MISC_DATA_H__

/* === WiFi Interface Constants === */
#define WLAN_SERIAL_TAID 2
#define WLAN_SERIAL_PNTR 3003
#define WLAN_SERIAL_FILE "/sys/devices/fb000000.qcom,wcnss-wlan/serial_number"
#define WLAN_MAC_TAID 2
#define WLAN_MAC_PNTR 3006
#define WLAN_MAC_FILE "/sys/devices/fb000000.qcom,wcnss-wlan/wcnss_mac_addr"

/* === Bluetooth Interface Constants === */
#define BT_MAC_TAID 2
#define BT_MAC_PNTR 3002
#define BT_MAC_FILE "/data/misc/bluetooth/bluetooth_bdaddr"

#endif /* __TA_MISC_DATA_H__ */
