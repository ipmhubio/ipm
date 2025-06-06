## 0.10.0 (06/06/2025)

#### IPM 0.10.0 Release Notes

Major update with the following improvements and fixes:

**New features**:
- **Introducing verified packages**
  - Creating, publishing, and using packages that hold a generated manifest will go through extended verifications of their contents.
  - Building packages with a verified badge can be activated by using the `--include-manifest` parameter.

- **Introducing summary reports for export, build, and publish verbs**
  - Through these reports the user has the capability to verify the full process for auditing purposes.
  - A summary report can be created by using the `--summary-file` parameter on the `export`, `build` and `publish` verb.

- **Added parameter `--force` to the `export` verb**
  - Allows an export to be created into non-empty folders.

**Changes**:
- **Changed default behavior when creating new packages**
  - Empty folders are now not included anymore by default.

- **Enhanced build exclude list with additional files**
  - Added several new files to the build exclude list, which is used when building new packages:
    - .userosscache
    - .DS_Store
    - .Thumbs.db
    - .log
    - .pyc
    - .pyo
    - .ps1xml
    - .psc1
    - .class
    - .o
    - .obj
    - .dll
    - .exe
    - .so
    - .dylib
    - .iso
    - .trace
    - .pid
- **Enhanced build exclude list with additional folders**
  - Added several new folder names to the build exclude list, which is used when building new packages:
    - bin
    - __pycache__
    - .egg
    - .egg-info
    - .whl

- **Polished `build` `--dry-run` output**
  - Improved output with a more intuitive sorted way.

- **Polished general CLI output for multiple verbs**
  - Enhanced readability and consistency across command outputs.

**Bug fixes**:

- **Fixed an issue where specific workspace folders during a package build were not excluded correctly**
  - Resolved incorrect exclusion handling for workspace folders. 

- **Fixed an issue where specific folders that are on the exclude list but not excluded correctly during a package build**
  - Improved exclude list functionality to work as expected.
----
* ipm-linux-arm-full.tar.gz
    * 6768d0b43c2d7b76cff03b216ac85daa3dd10e0f0bd73f7921869525e62fb6fd
* ipm-linux-arm-full.zip
    * a103cb35a270ab962de3a26419a4c0ce0eeb4fe3a7e5340f01b1ee51109bf00b
* ipm-linux-arm.tar.gz
    * d5c29e70b470d69bf1d4e955779ae2d010668a10916cd275871c09d423c43c03
* ipm-linux-arm.zip
    * 2cdeea8d714fbb896a3425dc52be0d90ffb0049ffef59586fb25cb1ed0e586ec
* ipm-linux-arm64-full.tar.gz
    * 0156f18ca6ce8069b0777cd62fb33bb0075a2c85fe7a970a8c3e11bb93efb94d
* ipm-linux-arm64-full.zip
    * b265c89dfb66f0d2d803d7072b3b8064ae73752dfba55ad4cf22ddd5c0d2ccf8
* ipm-linux-arm64.tar.gz
    * 10d57c52a66882ef6af6eb021caa833fca29555de31367d9bee58bc05680a052
* ipm-linux-arm64.zip
    * 89bdda12d8f40c6fba4fa8f6a71be0f2ff1b8d130fa4b0a1ba51dc062c088ad0
* ipm-linux-x64-full.tar.gz
    * d6bb9455fd65fe0fc322d4ce2e675ec8dd787cc1a6ad3316a72ceb0a365462fa
* ipm-linux-x64-full.zip
    * 9fe8aaa4ec934114067c8458aef0dd62c09dd0746c44afc9404cc67042e96674
* ipm-linux-x64.tar.gz
    * 86c8d28f64c7065ed7aa558cf36e6c8639516d53e51eeaba353fb29f69edeef9
* ipm-linux-x64.zip
    * 78b7a9cf71635ac669ef6b8a29703b980d0fb699550b89086cd21b5fb722243d
* ipm-osx-arm64-full.zip
    * c2d322a2c1e008112df8fae9107c2cbb1a7f200df8026e388816fc7314725e5d
* ipm-osx-arm64.zip
    * 267fffd80656911f5bf07ddc0c84745b2693078a8365f49c60a308840ba2e945
* ipm-osx-x64-full.zip
    * 78e5cf1f1695eee158b8ba77c758923f16cf9c9b3779230ded3f25fde770507f
* ipm-osx-x64.zip
    * 5d0c3d8dcd82f9ee098f482ae7583bcb30fa70dd9c2c17ea55d587f960fee911
* ipm-win-arm64-full.zip
    * c86cc057394ba1d720ea1ebd7b0b8493d4640fb9c4016dfe2590f3da78f3ca51
* ipm-win-arm64.zip
    * 219f1875bfef08a252e49770fca57ecfe113d83960dc7f143b8276abbb861270
* ipm-win-x64-full.zip
    * 22b8f1c644e7e99a5bf6625f0d61abe12c939ba5dc04b3ccbb646ca34a29fd07
* ipm-win-x64.zip
    * 6af3059128d5c543d0367deaec7e0330898ceacabf83412a1ee602d097f8df86
* ipm-win-x86-full.zip
    * e8958320a88aa798022f70404c5113e3ac8f9089f932b5ff288d2a6f15587d61
* ipm-win-x86.zip
    * a5a6f8e3854e05e01a832077944adf6d963079fafbbd6a5f51031b245ab532c8
