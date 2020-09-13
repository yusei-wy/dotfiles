#!/bin/bash

function existsCmd() {
    type -a $1 > /dev/null 2>&1
}

OS=""
function getPlatform() {
    if [ "$(uname)" == "Darwin" ]; then
        OS=Mac
    elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
        OS=Windows
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        OS=Linux
        # WSL 用の調整
        if [[ "$(uname -r)" == *Microsoft* ]]; then
            OS=WSL
        fi
    else
        OS=Unknown OS
    fi
}

