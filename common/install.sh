# Define variable(s)
[ -L /system/vendor ] && VEN=/vendor || VEN=/system/vendor

# Define function(s)
manufacturer_check() {
  local PROP=$(echo "$1" | tr '[:upper:]' '[:lower:]')
  [ "$(sed -n "s/^ro.product.manufacturer=//p" /system/build.prop 2>/dev/null | head -n 1 | tr '[:upper:]' '[:lower:]')" == "$PROP" -o "$(sed -n "s/^ro.product.manufacturer=//p" $VEN/build.prop 2>/dev/null | head -n 1 | tr '[:upper:]' '[:lower:]')" == "$PROP" ] && return 0
  return 1
}

# Core installation
if manufacturer_check "OnePlus"; then
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
