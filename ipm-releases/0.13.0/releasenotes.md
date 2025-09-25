# IPM 0.13.0 (25/09/2025)

## Releasenotes

Action specific application return codes, improved info verb and listing empty packages.

**New features**:

- **Implemented action specific application return codes.**\
  All verbs now return action specific exitcodes when something goes wrong or when a followup action should be possible.
  - When using the `info` verb, the following positive exitcodes can be expected:
    - 100: No published version was found for the requested package.
    - 101: The requested version was not found for the requested package.
  - For all verbs we will publish all (negative) exitcodes that can be expected within our online [docs](https://docs.ipmhub.io/docs/ipm/).

**Changes**:

- **Implemented option to include empty packages when listing**\
  Added new `--include-empty` option that can be used with the `list` verb so that packages that have no versions
  published will also be returned.

- **Improved info verb**\
  The `info` verb now shows information about a requested package, even when no versions were published.\
  Also, when a specific version was requested and this version does not exist, the CLI will still show the generic\
  package information but with a warning message that the version does not exist.

**Bug fixes**:

- Fixed a issue where retrieving the latest common (entity) rules did not work correctly due deserialization problems.

- Improved the validation of a given CLI configuration file without returning a unexpected error.

- Fixed a issue where gitignore pattern `folderorfile` did not take folders into accounts.
