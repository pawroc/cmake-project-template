#!/bin/bash

usage()
{
    echo "Script should be sourced instead of run"
}

_set_env_variables()
{
    [[ $0 = $BASH_SOURCE ]] && usage && exit 1

    PROJECT_ROOT="$(dirname "$BASH_SOURCE")/.."
    # PROJECT_ROOT="$(dirname "$(readlink -f "$0")")/.."
    HUNTER_ROOT="${PROJECT_ROOT}/prefix-root"

    echo "Env variables have been set: "
    echo "PROJECT_ROOT: '${PROJECT_ROOT}'"
    echo "HUNTER_ROOT:  '${HUNTER_ROOT}'"
}

_prepare_env()
{
    echo "Creating prefix-root..."
    mkdir -p ${HUNTER_ROOT}
    echo "Done"
}

#################################################
# main
#################################################
_main()
{
    _set_env_variables
    _prepare_env
}

#################################################
# script begining
#################################################
_main