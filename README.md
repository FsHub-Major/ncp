# NCP (Network Copy)

A simplified network file transfer tool built on top of rsync.

## Overview

NCP (Network Copy) is a user-friendly command-line tool that makes copying files over a network easier. It uses rsync under the hood but provides a simpler interface for common file transfer operations.

## Features

- Easy to use syntax similar to regular `cp` command
- Secure file transfer using SSH protocol
- Automatic resume of interrupted transfers
- Progress indication during transfer
- Preserves file permissions and timestamps

## Installation

1. Clone this repository
2. Make the script executable:
```sh
chmod +x ncp
sudo mv ncp ~/.local/bin
```
important note: insure that "~/.local/bin" included in your path directory

## Usage Guide for NCP

### Basic Usage
The basic syntax for NCP follows this pattern:
```console
ncp [options] <server_path> <local_path>
```

### Options

. -s, --setup: Configure server settings
```sh
ncp --setup
```
. -d, --download, -u, --upload: choose whats ever downlowd or upload from/to server
```sh
ncp [<-d|--download|-u|--upload>] <server_path> <local_path>
```

## Dependencies

This tool relies on rsync, which is distributed under the GNU General Public License (GPL). Ensure that rsync is installed on your system before using this tool.

For more information about rsync, visit: [https://rsync.samba.org/](https://rsync.samba.org/)

## Licensing

MyTool is licensed under the [MIT License](LICENSE.md). However, note that rsync itself is licensed under the GNU GPL.

© 2024 FsHub-Major. All rights reserved.


