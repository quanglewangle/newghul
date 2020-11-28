# Scripts for installing dependencies and for building the application

NOTE: If you're using the development container, you do not need to install dependencies yourself, and if you're using Visual Studio Code you do not need to build manually.

## install-dependencies.sh

If you're running on Debian or Ubuntu natively or under WSL2, then `install-dependencies.sh` will run `apt` to install the dependencies required to run the compliler.

If you're running a different Linux distribution, have a look at this script to see the required dependencies and then install them using the package manager for your distro.

## install-ghul.sh

`install-ghul.sh` downloads and installs or upgrades the compiler itself.

## build.sh

`build.sh` calls the compiler to build the example application. The output is a .NET .exe that can be run under Mono or .NET Core.
 
