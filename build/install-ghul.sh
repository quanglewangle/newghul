#!/bin/bash

# This script will download the installer for the latest version of ghul and run it.
# NOTE: you do not need to do this if you're using the development container as the compiler is pre-installed in the devcontainer

wget https://github.com/degory/ghul/releases/latest/download/ghul.run -O ghul.run
bash ./ghul.run -- -N
