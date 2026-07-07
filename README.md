# S4hamlib

## Purpose
This repository exists solely to provide an *easy* shell script for building [Hamlib](https://github.com/Hamlib/Hamlib) libraries on macOS Apple Silicon.

The shell script 

- clones the release version (currently 4.7.2) of Hamlib, 
- builds it, 
- places the build results in the `shared_libs` directory, 
- and invokes `make check` to run the tests included with the source, placing the output in the `tests` directory

## Disclaimer
This project is not intended as an official distribution of the [Hamlib](https://github.com/Hamlib/Hamlib) libraries nor as a general source for binaries on Apple platforms.

Several applications and libraries developed under the S4 domain require the **Hamlib** libraries, as well as other third-party libraries. While I support and appreciate package installers such as Homebrew and MacPorts, the applications I am building necessitate the inclusion of all components within a single binary.

## Advisory
This project and any binaries compiled using the shell script are suitable for my intended applications. Currently, I do not perform any extensive testing either through the script or independently on the output of the shell script. Consequently, this project produces binaries that are **without warranty** and **use at your own risk**.

I welcome pull requests (PRs), but as mentioned above, the primary purpose of this repository is to serve the needs of the applications developed as part of my *S4* suite. PRs that support newer Apple Silicon (M*) processors or provide valuable enhancements to the build script may be considered.
