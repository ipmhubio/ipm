## 0.8.0 (04/23/2025)

#### IPM 0.8.0 Release Notes

Major update with the following improvements and fixes:

**New features**:
- **Introduced the export functionality**
  - New verb `export` which gives the option to export an existing IPMHub package, without nested package support, to a selected location without the need to create an IPM workspace first.
- **Introduced the build functionality**
  - New verb `build` which gives the option to create a build of an existing folder which reflects exact the same output as when it would be selected for publication.
  - Verb `build` has the argument `--dry-run` which shows the contents of the build that would be generated without the need to output the files.
- **Updated maximum depth of nested workspaces**
  - Enlarged the maximum depth of nested workspaces to 8, which was 5.
 
- **Added additional filtering options when searching or listing packages**
  - New argument `--visibility` on the `list` and `search` verb which gives the option to filter specifically public, hybrid or private packages or a combination of these options.
  - New argument `--type` on the `list` and `search` verb which gives the option to filter on a specific content type.
- **Introduced the option to sync multiple packages at once**
  - New argument `--packages` on the `sync` verb which gives the option to only sync a list of specific packages within the workspace.
- **Introduced the option to add multiple packages at once**
  - New argument `--packages` on the `add` verb which gives the option to add multiple packages with their latest version to a workspace.
- **Added version check**
  - On interactive sessions, the CLI now checks every 24 hours if there is a new version available.
- **Upgraded to latest version of dependencies**
  - Upgraded CLI dependency packages to their latest version.

**Bug fixes**:
- **Fixed invalid path configuration for package working folders.**
  - Removed the option to traverse / configure package working folders outside the workspace folder.
- **Fixed synchronization issues with workspaces with more then 5 packages.**
  - When a workspace was synchronized with more then 5 packages, errors could occur. This is resolved.
  
----
* ipm-linux-arm-full.tar.gz
    * 3edefdde5c48133bf2d75c15eb08966721732686fd5f514fb078fe7ae844e811
* ipm-linux-arm-full.zip
    * 1e301964ca61199b2221cce11aeeac65e487d356bccfc530d7687016a7131f76
* ipm-linux-arm.tar.gz
    * 4bb4c62190289f8ddda44058bf619e0b9fc392a2449dfd2bb44f57c9498a8695
* ipm-linux-arm.zip
    * 732ad3e1c45d84a53c0efb3eeef8a7a53ab23ec57dfaeedd98feb9048974607d
* ipm-linux-arm64-full.tar.gz
    * ebc05d9c61649ce4e15e7d53def4d81c242f220294bfd93d4fc16646bf10ca2f
* ipm-linux-arm64-full.zip
    * 116a42e582d2e4f2ed3c3d3275f8b3257ee4e2586e97ad08f90a79e057895881
* ipm-linux-arm64.tar.gz
    * ca38652cc473b98c800f8ba432e72c54cb9504c5cc0115b388e9a4bed32069e3
* ipm-linux-arm64.zip
    * a1093f1548bf2a97d20c8aa20ad1f88acb46dc438192e2414889c5dbb54cffd2
* ipm-linux-x64-full.tar.gz
    * 1b9316c71415706a0824457baa97ab622cfdce4b0c14c3999590ed60527fe2d7
* ipm-linux-x64-full.zip
    * ff233b14bc90d63efd9778991067e85b315dbdcd2c0abd7974e6846e18f8c055
* ipm-linux-x64.tar.gz
    * 326f5c38e9a0665698e97ca711ea676946cd6abbed2e7ae3eef190973d8c85c1
* ipm-linux-x64.zip
    * 0df11781aead7aa8dceb42fddadff65b9841c0228524762b6cb35f810732411c
* ipm-osx-arm64-full.zip
    * 435c1bda04023ac6ea86a020deb766e66c2508d9f8ba9640ddc08d0c9bd20fec
* ipm-osx-arm64.zip
    * 603f1603c622244b50612d10dfc1179d71abbb6718a91a213386b89edb5a5286
* ipm-osx-x64-full.zip
    * a4f5107de7c6125f45e2e4275e114bf90db3cdc615ba2f1bfc2b516fbeac42fe
* ipm-osx-x64.zip
    * 6aa831753255398a66438643cc99e7f3fcb42fabfe8e28229162dbddcb13dcef
* ipm-win-arm64-full.zip
    * 35d20d7b8a7bebe02ee20c7ac8e11aebc2d6cf8b6951089216ba302b19eb16c0
* ipm-win-arm64.zip
    * 6638b8d5e7d815cc4ccfda58be9d1783b2786c763393ac8ad61bd955f9f02077
* ipm-win-x64-full.zip
    * 329e2c6a25f14110c4b45f367c1e706db8b88c180adfd7d4ddbb8a58f97f16c7
* ipm-win-x64.zip
    * 521fa5de3c1e459496e087fe979757ff3708eef9f29bbb97e2e73c6217cac20e
* ipm-win-x86-full.zip
    * d67751674f1bd9480f7185ca7a21977f1cf8adb1d7d8e4e38c2cd067572e5ac1
* ipm-win-x86.zip
    * c515acf8d420cf93624749ebc360a97b0bb42b33be649c1966a19fce6856ef40
