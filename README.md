# gk userland repo #

This repository creates various paarts of the userland for the gk system (<https://github.com/jncronin/gk>).  Please ensure all submodules are also cloned when using.

The various parts are presented in numerical order.

00_filesystem is designed to be run with the gk in RawSD mode.  This is the default if there is no filesystem or valid gk-supervisor binary on the gk.  Connect the gk to a computer and it will expose the entire SD contents as a USB mass storage device.  Then partition and format the device as per the instructions in 00_filessystem/README.md.

All the other folders contain scripts to build various programs to run on the gk.  They will create an offline repository of cross-compiled program in tar.gz format within the \${REPOROOT} directory.  This defaults to ~/opt/gkv4-repo

### Important ###
Before running any of the build scripts (01_base and up) you are required to build the gk build tools (gcc, ld, newlib etc) as well as the sysroot (all libraries including SDL etc).  This is accomplished by running various scripts in the src/gk-userland directory.

First, set \${SYSROOT} and \${TOOLSDIR} if necessary.  These default to ~/opt/gkv4 and ~/opt/gkv4-build respectively.

Next, obtain the various build system dependencies.  See src/gk-userland/DEPENDENCIES.md for a non-exhaustive list.

Then, run ./build-toolchain-v4.sh in the src/gk-userland directory to build a cross-compiler in \${TOOLSDIR}

Finally run ./build-libraries-v4-static.sh in the src/gk-userland directory to build all the relevant include files, headers etc in \${SYSROOT}

If you have already populated the \${SYSROOT} and \${TOOLSDIR} directories, but restart your shell, you can:

    source .\gkv4vars.sh
in the src/gk-userland directory to set these variables back to their defaults and ensure the PATH variable is set properly.

Once these steps are complete, the various repo items can be compiled.  01_base is required for all gk systems.  02_mesa is optional but highly recommended if OpenGL 3D support is wanted.  The other directories are all optional.  Please note that only open source code is contained in this repo and the various submodules.  You will need to acquire and proprietary software yourself (for example emulator ROMs, the data files for Doom, Quake, Quake 2, Descent, OpenJK, Red Alert etc).

Check the various subdirectories in \${REPOROOT} for the output.  These .tar.gz files need copying to the FAT filesystem exposed by the gk over USB and will be provisioned at next system restart.
