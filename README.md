# OOS Native Call Recording Enabler [![Forum](https://img.shields.io/badge/XDA-Forum-f59714.svg?style=flat-square)](https://forum.xda-developers.com/oneplus-5/themes/app-enable-call-recording-boot-t3634292)

## Function
This module enables the native call recording feature on OxygenOS (and ROMs based on it).

## Things to Remember
Don't forget to **uninstall** *(not the same as disabling)* the module whenever you're planning on updating OOS or else it might create issues. You have been warned! You can reinstall the module after the update.

## Changelog
### v9.2
- Improve race condition handling at boot
- Fixed installation failures with Magisk Canary

### v9.1
- Updated base template to MMT-Ex Template v1.5
- Fixed manufacturer check

### v9.0
- Re-based the module on MMT-Ex Template
- Added manufacturer check to prevent installation on non-OnePlus devices

### v8.0
- Update for Magisk v19.0

### v7.0
- Permanently fixed call recording automatically getting disabled after a while
- Fixed the SIM settings force close issue that was caused by the release of v6.0

### v6.1
- Reverted the last change which caused SIM settings force closes

### v6.0
- Fixed call recording automatically getting disabled after a while

### v5.4
- Reverted changes made in v5.2 and v5.3 as most of the users preferred and had no issues with v5.1

### v5.3
- Adjusted the script to make the infinite loop run asynchronously

### v5.2
- Made the script execute the command every minute infinitely post the initial run

### v5.1
- Made the script execute the command 5 times at an interval of 30 seconds after boot

### v5.0
- Update for Magisk v17.0

### v4.0
- Update for Magisk v16.0

### v3.2
- Slightly increased the script execution delay from 10 seconds post boot to 30 seconds post boot

### v3.1
- Reduced the script execution delay from 2 minutes post boot to 10 seconds post boot

### v3.0
- Update for Magisk v15.0

### v2.0
- Update for Magisk v14.0

### v1.0
- Initial release for Magisk v13.1, v13.2, v13.3

## Links
* [GitHub](https://github.com/Magisk-Modules-Repo/oosnativecallrecordingenabler)
* [Support](https://forum.xda-developers.com/oneplus-5/themes/app-enable-call-recording-boot-t3634292)
* [MMT-Ex](https://github.com/Zackptg5/MMT-Extended)
