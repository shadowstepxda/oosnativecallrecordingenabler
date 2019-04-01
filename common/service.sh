#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
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
