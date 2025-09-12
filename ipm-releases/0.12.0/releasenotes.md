# IPM 0.12.0 (12/09/2025)

## Releasenotes

Centralized common rules for validation, advanced build auto ignore support, improved console and summary output for build/publish, enhanced info verb with detailed version history.

**New features**:

- **Centralized common rules retrieved from the API for packaging and entities.**
  - All common rules needed to validate input or packaging are now centrally managed for future improvements.
  - Updated maximum length of package names to 64 characters.
  - Updated maximum length of organization- and usernames to 30 characters.

- **Implemented advanced build auto ignore functionality**\
  A `.ipmignore` file can now be placed within the root of the folder that will be packed through IPM.\
  The file will be picked up during the `build` and `publish` verbs and the ignore rules will be taken into \
  account. All wel known `.gitignore` rules can be used as described here: [git ignore pattern format](https://git-scm.com/docs/gitignore#_pattern_format).\
  The following extensions are ignored by default and can be overridden if required:
  - .ipmignore
  - .ps1xml
  - .bat

**Changes**:

- **Updated console and summary output of build and publish verbs**\
  Updated the `build` and `publish` verbs to that for skipped files the reason will be displayed.\
  This is visible within the `build` `dry-run` and when `--summary-file` output is requested when building or publishing through `publish`.

- **Updated console output of the info verb with other versions information**\
  Updated the `info` verb so that more details is showed for the requested version:
  - Total files for requested version.
  - Total downloads for requested version
  - A list of the last 6 versions with their details.

**Bug fixes**:

- Improved `build` / `publish` verb so that unintended behaviour with the location of the summary file is prevented.
