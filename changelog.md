# Changelog

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