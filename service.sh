#!/system/bin/sh
# This script will be executed in late_start service mode
(sleep 10
settings put global op_voice_recording_supported_by_mcc 1)&
