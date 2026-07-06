
############################################################################
#
#   build_hamlib.sh
#
#   Created by Michael Papp on 06-08-2026.
#
#   Copyright © 2026 Michael Papp. All rights reserved.
#
############################################################################




############################################################################

# define the file directory paths

############################################################################

# this build directory
PREFIX="$PWD"


# the cloned source directory
HAMLIB_SRC_DIR="$PREFIX/Hamlib"


# the shared_lib directory from the src directory
LIB_ROOT_DIR="$PREFIX/shared_libs"


# define the root directory for test files
TEST_ROOT_DIR="$PREFIX/tests"



############################################################################

# setup for the build

############################################################################

# delete the source directory from the last build
if [ -d "$HAMLIB_SRC_DIR" ] && [ "$(ls -A "$HAMLIB_SRC_DIR")" ]; then
    rm -rf "$HAMLIB_SRC_DIR"
fi


# delete the header file from the last build
if [ -d "$LIB_ROOT_DIR" ] && [ "$(ls -A "$LIB_ROOT_DIR")" ]; then
    rm -rf "$LIB_ROOT_DIR"/bin
    rm -rf "$LIB_ROOT_DIR"/include
    rm -rf "$LIB_ROOT_DIR"/lib
    rm -rf "$LIB_ROOT_DIR"/share
fi


# delete the header file from the last build
if [ -d "$TEST_ROOT_DIR" ] && [ "$(ls -A "$TEST_ROOT_DIR")" ]; then
    rm -rf "$TEST_ROOT_DIR"/*.txt
fi


# clone the working (release) directory
git clone --recurse-submodules --branch 4.7.2 --depth 1 https://github.com/Hamlib/Hamlib.git



############################################################################

# build Hamlib

############################################################################

# cd into the source directory
cd "$HAMLIB_SRC_DIR"


# call bootstrap
./bootstrap


# call configure
./configure --prefix="$LIB_ROOT_DIR"


# build it
make


# install the libraries, headers, et al into the shared_libs directory
make install



############################################################################

# run tests and output the results

############################################################################

make check >> "$TEST_ROOT_DIR/hamlib_tests_$(date +%Y-%m-%d_%H-%M-%S).txt"


