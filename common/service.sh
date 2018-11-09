#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread
sleep 30
settings put global op_voice_recording_supported_by_mcc 1
sleep 30
settings put global op_voice_recording_supported_by_mcc 1
sleep 30
settings put global op_voice_recording_supported_by_mcc 1
sleep 30
settings put global op_voice_recording_supported_by_mcc 1
sleep 30
settings put global op_voice_recording_supported_by_mcc 1

(while :
do
	sleep 60
	settings put global op_voice_recording_supported_by_mcc 1
done)&
