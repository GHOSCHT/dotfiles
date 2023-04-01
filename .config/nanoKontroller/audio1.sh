#!/bin/bash
pactl set-default-sink alsa_output.pci-0000_0c_00.4.analog-stereo
pw-link --disconnect LibreWolfSink:monitor_FL alsa_output.usb-Burr-Brown_from_TI_USB_Audio_CODEC-00.pro-output-0:playback_AUX0
pw-link --disconnect LibreWolfSink:monitor_FR alsa_output.usb-Burr-Brown_from_TI_USB_Audio_CODEC-00.pro-output-0:playback_AUX1
pw-link LibreWolfSink:monitor_FL alsa_output.pci-0000_0c_00.4.analog-stereo:playback_FL
pw-link LibreWolfSink:monitor_FR alsa_output.pci-0000_0c_00.4.analog-stereo:playback_FR

# pw-link LibreWolfSink:monitor_FL easyeffects_sink:playback_FL
# pw-link LibreWolfSink:monitor_FR easyeffects_sink:playback_FR
