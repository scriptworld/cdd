#!/bin/bash
# Setup scritps for easily configuring Cdd

SCRIPT_NAME=cdd
SET_DIR=/usr/local/bin
CUR_PATH=$(pwd -P)
RC="${HOME}/.bashrc"
COMPLETION="cdd-completion.bash"

[[ ! -f $SET_DIR/cdd ]] \
	&& echo "Symbolic link $SCRIPT_NAME.sh to "$SET_DIR"/$SCRIPT_NAME" \
	&& sudo ln -s $CUR_PATH/cdd.sh $SET_DIR/cdd

echo "
# for script ${SCRIPT_NAME}
source ${SET_DIR}/${SCRIPT_NAME}
[ -f ${CUR_PATH}/${COMPLETION} ] \\
	&& source ${CUR_PATH}/${COMPLETION}" >> ${RC}
source ${RC}
