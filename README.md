# ClamAV
Regular rebuilds of upstream container

![Build, scan & push](https://github.com/Polarix-Containers/clamav/actions/workflows/build.yml/badge.svg)

### Features & usage
- Drop-in replacement for the [official image](https://hub.docker.com/r/clamav/clamav/).
- The container can run unprivileged with the `/init-unprivileged` entrypoint: you should check your volumes' permissions (eg `/data`), default UID/GID is 200024.

### Licensing
- Licensed under APL 2 to comply with licensing by Cisco.
- Any image built by Polarix Containers is provided under the combination of license terms resulting from the use of individual packages.