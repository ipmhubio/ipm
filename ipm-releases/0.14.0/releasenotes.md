# IPM 0.14.0 (18/03/2026)

## Releasenotes

CLI advanced diagnostics, advanced search, interactive add, resilient API communication, JSON schema insertion and more.

**New features**:

- **CLI advanced diagnostics**\
  Implemented 2 diagnostics levels within the CLI, which will be used to send advanced logging to the API in a 'session' way. The CLI will send information at the start of the session and at the end.

  - The `minimal` diagnostics level will only send basic information about the runspace of the application
    - CLI version
    - command
    - culture
    - exit code
    - OS platform / version / architecture
    - .NET specs

  - The `full` diagnostics level will send additional data like:
    - CI runspace if ran from a Azure DevOps / GitHub Action / GitLabCi / Jenkins or TeamCity pipeline.
    - Git working copy information, if applicable.
    - Up to 10 additional free-to-use metadata fields for extra context, by exposing `IPM_META_{NAME}` environment variables.
    - If the CLI exitcode <> 0, the run CLI log will be included.
    - If the CLI encountered a unhandled exception, the CLI stacktrace will be included.

  - The diagnostics level will be `none` by default, but can be overridden by the new `--diagnostics` parameter or by setting the environment variable `IPMHUBCLI_DIAGNOSTICS` to minimal or full.

  - When client secrets are used, through non interactive mode, the diagnostics level on the client secret will be used but still can be overridden by the `--diagnostics` parameter or `IPMHUBCLI_DIAGNOSTICS` environment variable.

- **Advanced search**\
  When using the `search` and `list` verbs, the CLI now supports advanced interactive navigating through the results, with a details pane.\
  It is also possible to go a level deeper, by going through the versions and also viewing their details.

- **Improved add verb with interactive mode**\
  When using the `add` verbs in a supported terminal session, the CLI will use the advanced search functionality to give the user the possibility\
  to interactive select the package and version that is desired.

- **JSON schema validation**\
  When initializing a new IPMHub local workspace, a JSON schema validation property will be included.

- **Malware scanner knowledge**\
  When a new package version has been published, the CLI will report if the version is awaiting a malware scan. Until the scan is completed, the\
  version will not be shown as the latest version.

- **Workspace init with configuration settings**\
  When initializing a new IPMHub local workspace (`ipm init`), new additional parameters (`--associations`, `--local-name`) can be provided\
  so that a new local workspace can be linked to an existing tracked workspace in a one-liner.

- **Retry mechanisms for API and authentication server communication**\
  When communicating with the authentication server or the API, all calls now have retry mechanisms to make the CLI more resilient.

**Changes**:

- **Improved info verb**\
  When using the `info` verb in a supported terminal session, the CLI will use the advanced search functionality to give the user the possibility\
  to interactive go through the versions of the requested package.

**Bug fixes**:

- Resolved an issue when trying to build a new package version, when a duplicate file is found within the source folder with different casings.

- Fixed an issue where publishing a pre-build package version did not succeed when using an .ipmignore file and included predefined excluded files/extensions (like .gitignore).

- Resolved an issue if communication with the authentication server resulted in a timeout or other connection error.
