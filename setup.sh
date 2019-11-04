#!/bin/bash

cd $(dirname $0) # move to base dir
[[ -z $HOME ]] && echo "HOME must be set." && exit 255;

function usage {
    echo "Valid options:"
    echo "      -h|--help ........ display this text"
    echo "      -f|--force ....... forces copy of dotfiles - even if they exist"
}

FORCE=0
PWD=$(pwd)
while [[ -n $1 ]]; do
    case "$1" in
        -f|--force)
            FORCE=1
            shift
            ;;
        *)
            usage
            exit
            ;;
    esac
done

cd files/
for f in $(find . -maxdepth 1 -type f); do
	f="$(echo $f | sed 's/.\///g')"
    if [[ $FORCE == 1 ]] || [[ ! -e "$HOME/.$f" ]]; then
        ln -sf "$PWD/$f" "$HOME/.$f"
    else
        echo "$HOME/.$f already exists."
    fi
done

exit
