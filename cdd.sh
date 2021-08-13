#! /bin/bash
# Cdd is bash shell command which can help to go to previous directory easily
# Author : Ji-Hun Kim (jihuun.k@gmail.com)
# Version : v0.1.0

function print_usage() {
        echo "cdd: easy to go to previous directory"
        echo "	Usage: cdd [number]"
        echo "	Example: cdd 3 == cd ../../../"
}

function get_cnt() {
        [[ -z ${1} ]] && echo 0 || echo $((${1} - 1))
}

function cd_dir() {
        [[ -e "${1}" && -d "${1}" ]] && cd ${1}
}

function cd_back() {
        local DIR="./"
        local CNT=$(get_cnt ${1})
        while true
        do
                DIR+="../"
                [[ $CNT -gt 0 ]] || break
                CNT=$(($CNT - 1))
        done
        cd $DIR
}

function cdd_func() {
        local ARG=${1}
        if [[ ${ARG} =~ ^[0-9]+$ ]] || [[ -z ${ARG} ]]; then
                cd_back ${ARG}
        elif [[ ${ARG} == "-h" || ${ARG} == "--help" ]]; then
                print_usage
        else
                cd_dir ${ARG}
        fi
}
alias cdd='cdd_func'
