#!/usr/bin/env bash

if [ "x$(id -u)" != 'x0' ]; then
    echo 'Error: this script can only be executed by root'
    exit 1
fi

read -p "You launched command to shutdown this machine. Are you serious? (Y/N) : " confirm_answer

if [ "$confirm_answer" = 'Y' ] || [ "$confirm_answer" = 'y' ]; then
  poweroff
fi

exit 0
