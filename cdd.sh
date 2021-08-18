#! /bin/bash
# Cdd is bash shell command which can help to go to previous directory easily
# Author : Ji-Hun Kim (jihuun.k@gmail.com)
# Version : v0.3.0

function __cdd_usage() {
        echo "cdd: easy to go to previous directory"
        echo "	Usage: cdd [number]"
        echo "	Example: cdd 3 == cd ../../../"
}

function __cdd_nr_prev() {
        [[ -z ${1} ]] && echo 0 || echo $((${1} - 1))
}

function __cdd_cd_path() {
        [[ -e "${1}" && -d "${1}" ]] && cd ${1}
}

function __cdd_prev_path() {
        local DIR
        local CNT=$(__cdd_nr_prev ${1})
        while true
        do
                DIR+="../"
                [[ $CNT -gt 0 ]] || break
                CNT=$(($CNT - 1))
        done
        echo $DIR
}

function __cdd_cd_back() {
	cd $(__cdd_prev_path ${1})
}

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
