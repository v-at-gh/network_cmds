# network_cmds

This repository contains tools and utilities for network management on macOS, as part of the Apple open-source distributions. 

## About

Currently, this fork focuses on compiling and running the `netstat` binary under macOS. Additional placeholders are provided for other tools to be integrated in the future.

### `netstat`

`netstat` is a utility for displaying network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.

#### Compilation

To compile `netstat`, run the following:

```bash
make netstat
```

#### Prerequisites

- macOS development environment
- Headers from the [xnu repository](https://github.com/apple-oss-distributions/xnu) added to the `network_cmds_lib` directory to resolve missing structure definitions.

### Placeholders

This repository includes placeholders for other tools in the `network_cmds` package. These will be addressed in future updates.

## License

This repository uses the Apple Public Source License. See the [APPLE_LICENSE](APPLE_LICENSE) file for details.
