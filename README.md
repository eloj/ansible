# My public ansible tasks

Currently the only task available on the main branch is one
to install/upgrade golang.

The script `./update.sh` will run said task locally, using the
default settings. Sudo is required by default configuration.

## tasks/golang.yaml

A task that installs or upgrades a local golang installation.

The location and version to install is defined by `go_version`
and `go_path` variables in `dev.yaml`.

The default installation location is `/opt/local/`

The installation archive is also pinned by its SHA-256 hash,
taken from https://go.dev/dl/ at the time this repo was updated.

* Q: Are you aware you can easily upgrade using golang itself?
* A: Yes.

