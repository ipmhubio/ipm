## 0.11.0 (23/06/2025)

IPM 0.11.0 Release Notes
A solid update introducing smarter status insights and safer file syncing.

**New features**:

- **Advanced status functionality**
  - The `ipm status` command now goes beyond showing package configuration states. It also analyzes the actual local file system, identifying added, modified, or deleted files and incomplete package initializations. Offering a full and accurate picture of your local workspace.

- **Hash-based file comparison for sync operations**
  - Instead of relying on file timestamps, `ipm sync` now uses file hash snapshots to detect local changes. This guarantees that locally modified files will not be unintentionally overwritten by the original package content.

**Changes**:

- **Improved package sync performance**
  - Optimized the synchronization process for individual packages, resulting in faster execution during sync operations.

- **Excluded `.terraform.lock.hcl` from build preparation**
  - This Terraform lock file is now ignored during new build preparations to avoid unnecessary noise in newly created packages.

**Bug fixes**:

- _No bugs were fixed in this release._
