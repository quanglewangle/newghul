#!/bin/bash

# this script runs the compiler to build the application:

find src -name '*.ghul' | xargs /usr/bin/ghul -o hello-world.exe