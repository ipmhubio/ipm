## 0.7.0 (02/06/2025)

#### IPM 0.7.0 Release Notes

This release comes with the implementation of client secrets, which enables you to integrate IPM directly into your CI/CD workflow.
More information about client secrets can be found on our [docs](https://docs.ipmhub.io/docs) page.

**New features**:
- **Added support for non-interactive authentication using client secrets.**

  - New arguments: `--non-interactive` and `--client-secrets` for authentication without user input.
  - Introduced environment variable `IPM_CLIENT_SECRETS` to securely pass client secrets.
  - Enables automated authentication scenarios, such as CI/CD pipelines.
  
- **Improved verb help text.**
  - Updated descriptions for several verbs to improve clarity.

**Bug fixes**:

- **Fixed expired context warnings.**
  - IPM now correctly warns users before proceeding with an expired context.

- **Fixed `config` verb registration issue.**
  - Re-registering IPM in a different folder now correctly updates the environment PATH.
  
  **Fixed exitcode for non-problematic actions**
  - When executing the binary without verbs or verbs `--version`, `--help` or `verb --help` an exitcode 0 is now returned.

----
* ipm-linux-arm-full.tar.gz
    * a0888d4e2cb928a5d050a8a8d69ff8be65138a2cb915b7f2cf54f29a6d77ef2f
* ipm-linux-arm-full.zip
    * a81ca9231686e4ac829bf45b777dcb3fd446304abe5d341493d49d5d1a8c711c
* ipm-linux-arm.tar.gz
    * 04df9c0f06ee00cda5140fb286303b21258469923288b6288e79a3c652fe9122
* ipm-linux-arm.zip
    * 1662bbcc67bc2af578d3244bdb517d9f9663a7fb605e86cb5027ceb02ee3127a
* ipm-linux-arm64-full.tar.gz
    * de395cb39dc9bedf7f09ab0cb4391dcaf3dcf29be5c31ef5ba5f763677513f06
* ipm-linux-arm64-full.zip
    * a76671dd74804c540b799126bac117efb718b8f63d4f72706d331cf5ac101e6b
* ipm-linux-arm64.tar.gz
    * f10456d24a97faec533a3eef9d2a006e1bc03813abd088862543325caaebfbd9
* ipm-linux-arm64.zip
    * 82ca75928c7309ffc1c591663bba6fc6949fce6d1edcd11ac3dde456dcfe5e34
* ipm-linux-x64-full.tar.gz
    * ff142ae4cf94a1d77e3bbd3834f750653e592f9dbace058b777b1c14b790aca1
* ipm-linux-x64-full.zip
    * 9ac196a305af4546a436e6c5fa94fc6384b477a49e1d4574d76019aee9ee7bba
* ipm-linux-x64.tar.gz
    * d2da7f02991b3e96335333325b21c14d39001926f0742353c5c781c6b309b5e4
* ipm-linux-x64.zip
    * 50347174cab9110a1a336a9b7069967ed1cdbea98e38cb932b8a847aeda6602c
* ipm-osx-arm64-full.zip
    * 5283b28163b8aad48138c93a1ab10b583285392478ac948fd1ee503cc14bfce9
* ipm-osx-arm64.zip
    * 2e0f6c42c62dbb74469c7e3da20afb1c30aea8cd72fd45cc58f280a5fffdd6bc
* ipm-osx-x64-full.zip
    * 19e30ad2a9124595b7dd0c285d175cc09487b461712440c54ba6be8282cbf97e
* ipm-osx-x64.zip
    * c61e464951a09906e99d052b09d38cafd7b3b17f3db07304f831631e228130a6
* ipm-win-arm64-full.zip
    * 4f578e31b03710006f99d8b23bfb4d9be98fa3b212bc5625c2a589af4294c8e4
* ipm-win-arm64.zip
    * 87933ca00b2f58cd4742e77a0815f2249151c103a302953c0edd8417bd3036ea
* ipm-win-x64-full.zip
    * 02036ac60a9e40ab48f328043fe2192df5b22eff1406c708ccb61f71efad1790
* ipm-win-x64.zip
    * f6bd79653e1fbff6ecd9cbab211833fc81501fb0432fc7849d586e200d704afb
* ipm-win-x86-full.zip
    * d10636dbce7318c295b9331017943157d4b37063c458411e5e5770261f749465
* ipm-win-x86.zip
    * 76d5004f2dd24212ff83d7dd53a71eafcf1f80fd2fbe1679c1a69f2eea4c1d49
