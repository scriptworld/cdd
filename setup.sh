# Setup scritps for easily configuring Cdd
# Just execute ./setup.sh

#!/bin/bash

SCRIPT_NAME=cdd
SET_DIR=/usr/local/bin
CUR_PATH=$(pwd -P)
BASHRC=~/.bashrc

echo "Symbolic link $SCRIPT_NAME.sh to "$SET_DIR"/$SCRIPT_NAME"
sudo ln -s $CUR_PATH/cdd.sh $SET_DIR/cdd

echo " ">> $BASHRC
echo "# for script cdd">> $BASHRC
echo "source /usr/local/bin/cdd">> $BASHRC
source /usr/local/bin/cdd
source $BASHRC
