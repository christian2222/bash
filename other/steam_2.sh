#!/bin/bash
export WINEPREFIX=$HOME/.steam
export WINEDEBUG=-all
nice -n 19 wine "C:\Program Files(x86)\Steam\Steam.exe" -no-dwrite
