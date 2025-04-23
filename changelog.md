# Changelog

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


#### IPM 0.6.0 Release Notes
We've upgraded to .NET 8.0, fine-tuned our CLI banner controls, and optimized error handling and dependencies. 

**New features**:
- Implemented possibility to remove the BANNER when executing the CLI through environment variable `IPMHUBCLI_BANNER_DISABLED` and value `TRUE`.

**Enhancements**:
- Upgraded the .NET SDK to 8.0 LTS.
- Improved error message when a tracked workspace could not be found.
- Removing unneeded or badly maintained third party packages.

## 0.5.5 (06/06/2024)

#### IPM 0.5.5 Release Notes

With this release we introduce our solution for life cycle management, read more -> [Tracked workspaces](https://docs.ipmhub.io/docs/tracked_workspaces/home/).

**Fixes**:

**New features**:

- Implemented life cycle management through associations that can be linked to a workspace
- Added animations and progress reports when calculating local workspace status and synchronizing.
- Implemented batched retrieval of package metadata for multithreaded retrieval so that the overall response time is significant faster. 
- Implemented cached package metadata so that retrieving metadata from the same package is only retrieved once from the IPMHub.
- Changed the status verb in a way that a logged-in user is now required.

**Enhancements**:
- Improved status retrieval of a workspace by validating the configuration through the IPMHub
- Improved error handling and messaging when workspace configuration could not be read

## 0.5.4 (03/23/2024)

#### IPM 0.5.4 Release Notes

We are thrilled to announce the public release of IPM 0.5.4! This release marks a significant milestone in our journey towards providing powerful and intuitive tool distribution and management:

**Fixes**:
- Fixed some minor bugs based on user feedback

**Enhancements**:

- Improved packaging and distribution process for faster and more reliable installations.

Compatibility:

IPM 0.5.4 is currently compatible with Windows-based systems, Debian, and Ubuntu, supporting both ARM64 and AMD64 architectures.

Client Options:

Full Client: This version includes a bundled .NET runtime, ensuring seamless installation and operation.
Small Client: This version relies on a local installation of the .NET 6 runtime. Make sure to have it installed on your system for optimal performance.

Documentation:
For more detailed information on installation, usage, and features, please refer to our [documentation page](https://docs.ipmhub.io/docs/installation/).

We are committed to delivering a streamlined and efficient package management experience, and your [feedback](https://github.com/orgs/ipmhubio/discussions) is invaluable in helping us achieve this goal.

Thank you for choosing IPM!

Happy deploying,
The IPM Team

---

## 0.5.3 (03/14/2024)

#### IPM 0.5.3 Release Notes

We are thrilled to announce the public release of IPM 0.5.3! This release marks a significant milestone in our journey towards providing powerful and intuitive tool distribution and management:

Compatibility:

IPM 0.5.3 is currently compatible with Windows-based systems, Debian, and Ubuntu, supporting both ARM64 and AMD64 architectures.

Client Options:

Full Client: This version includes a bundled .NET runtime, ensuring seamless installation and operation.
Small Client: This version relies on a local installation of the .NET 6 runtime. Make sure to have it installed on your system for optimal performance.

Documentation:
For more detailed information on installation, usage, and features, please refer to our [documentation page](https://docs.ipmhub.io/docs/installation/).

We are committed to delivering a streamlined and efficient package management experience, and your [feedback](https://github.com/orgs/ipmhubio/discussions) is invaluable in helping us achieve this goal.

Thank you for choosing IPM!

Happy deploying,
The IPM Team

---