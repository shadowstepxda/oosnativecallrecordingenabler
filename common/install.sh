# Core installation
if device_check -m "OnePlus"; then
  ui_print " "
  ui_print "- Manufacturer detected: OnePlus"
  ui_print " "
  ui_print "- Supported manufacturer, continuing install"
  mkdir -p $MODPATH/system/priv-app/TeleService
  cp -r $ORIGDIR/system/priv-app/TeleService/* $MODPATH/system/priv-app/TeleService
  sleep 3
  if [ -f "$MODPATH/system/priv-app/TeleService/TeleService.apk" ]; then
    ui_print " "
    ui_print "- APK copied to the module folder"
  else
    ui_print " "
    abort "! ERROR: APK couldn't be copied to the module folder"
  fi
  ui_print " "
  ui_print "- Modifying APK to prevent automatic deactivation of call recording"
  sed -i "s/op_voice_recording_supported_by_mcc/op_voice_recording_suppt_by_shaoxia/g" $MODPATH/system/priv-app/TeleService/TeleService.apk
else
  ui_print " "
  abort "! ERROR: Unupported manufacturer detected, exiting"
fi

# Remove stuff that doesn't belong in the module directory
ui_print " "
rm $MODPATH/LICENSE
