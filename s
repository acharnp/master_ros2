#!/bin/bash

# source the local ws environment
if [ -f ./install/setup.bash ]; then
    source ./install/setup.bash
    echo -e "\e[32mSourcing local ws successful\e[0m"
else
    echo -e "\e[31mSourcing local ws not successful\e[0m"
fi

