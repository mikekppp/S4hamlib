# S4hamlib

## Purpose
This repository exists solely to provide an *easy* shell script for building [Hamlib](https://github.com/Hamlib/Hamlib) libraries on macOS Apple Silicon.

The shell script 

- clones the release version (currently 4.7.1) of Hamlib, 
- builds it, 
- places the build results in the `shared_libs` directory, 
- and invokes `make check` to run the tests included with the source, placing the output in the `tests` directory

## Disclaimer
This project is not intended as an official distribution of the [Hamlib](https://github.com/Hamlib/Hamlib) libraries nor as a general source for binaries on Apple platforms.

Several applications and libraries developed under the S4 domain require the **Hamlib** libraries, as well as other third-party libraries. While I support and appreciate package installers such as Homebrew and MacPorts, the applications I am building necessitate the inclusion of all components within a single binary.


