# My public ansible tasks

The script `./update.sh` will run tasks locally, using the
settings in `dev.yaml`.

Sudo is required by the default configuration.

## tasks/vulkan-sdk.yaml

A task that installs or upgrades a vulkan-sdk installation
to the latest available version.

The location is specified by `vulkansdk_path` in `dev.yaml`,
and a `profile.d/vulkan-sdk.sh` script will be added to setup the
environment on login.

The `uninstall_previous_version` parameter can be used to control
whether the old SDK is kept or removed.

## tasks/golang.yaml

A task that installs or upgrades a golang installation to
a specific pinned version.

The location and version to install is defined by `go_version`
and `go_path` variables in `dev.yaml`.

The default installation location is `/opt/local/`

The installation archive is also pinned by its SHA-256 hash,
taken from https://go.dev/dl/ at the time this repo was updated.

* Q: Are you aware you can easily upgrade using golang itself?
* A: Yes.
