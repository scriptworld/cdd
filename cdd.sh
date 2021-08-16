#! /bin/bash
# Cdd is bash shell command which can help to go to previous directory easily
# Author : Ji-Hun Kim (jihuun.k@gmail.com)
# Version : v0.2.1

source cdd_func.sh

function __cdd_main() {
        local ARG=${1}
        if [[ ${ARG} =~ ^[0-9]+$ ]] || [[ -z ${ARG} ]]; then
                __cdd_cd_back ${ARG}
        elif [[ ${ARG} == "-h" || ${ARG} == "--help" ]]; then
                __cdd_usage
        else
                __cdd_cd_path ${ARG}
        fi
}
alias cdd=' __cdd_main'
