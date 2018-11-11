# OOSNativeCallRecordingEnabler [![Magisk](https://img.shields.io/badge/Magisk-17%2B-00B39B.svg?style=flat-square)](https://forum.xda-developers.com/apps/magisk/official-magisk-v7-universal-systemless-t3473445) [![Forum](https://img.shields.io/badge/XDA-Forums-f59714.svg?style=flat-square)](https://forum.xda-developers.com/oneplus-5/themes/app-enable-call-recording-boot-t3634292)

## Information
This module enables the native call recording feature on OxygenOS (and ROMs based on it). This is achieved by simply changing a hidden secure setting on OxygenOS (and ROMs based on it), at every boot, since the setting is reset everytime the phone is restarted.

## Changelog
### v1.0
- Initial release for Magisk v13.1, v13.2, v13.3 (Template version 4)

### v2.0
- Update for Magisk v14.0 (Template version 1400)

### v3.0
- Update for Magisk v15.0 (Template version 1500)

### v4.0
- Reduced the script execution delay from 2 minutes post boot to 10 seconds post boot

### v4.1
- Slightly increased the script execution delay from 10 seconds post boot to 30 seconds post boot to fix issues some users reported

### v5.0
- Update for Magisk v17.0 (Template version 17000)

### v5.1
- Made the script execute the command 5 times at an interval of 30 seconds after boot to try and alleviate some issues that a few people have been having with call recording getting disabled after a while (credits to @My Name is ShaoXIa for the idea)

### v5.2
- Made the script execute the command every minute infinitely post the initial run as another attempt to try and alleviate some issues that a few people have been having with call recording getting disabled after a while (credits to @inggaro for the idea)

### v5.3
- Updated the script to make the infinite loop run asynchronously to resolve conflicts some users reported (credits to @Zackptg5 for the suggestion)

### v5.4
- Reverted changes made in v5.2 and v5.3 as most of the users preferred and had no issues with v5.1

## Links
* [GitHub](https://github.com/Magisk-Modules-Repo/OOSNativeCallRecordingEnabler)
* [Support](https://forum.xda-developers.com/oneplus-5/themes/app-enable-call-recording-boot-t3634292)
