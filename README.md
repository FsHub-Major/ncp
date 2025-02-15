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
```sh
ncp [options] <local_path> <server_path>
```

### Options

. -s, --setup: Configure server settings
```sh
ncp --setup <local_path>
```