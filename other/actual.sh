#!/bin/bash
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"
aptitude update
aptitude upgrade
aptitude update

