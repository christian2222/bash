#!/bin/bash
sed -n '/\[begin python\]/,/\[end python\]/{//!p;}' .emacs > grep.py
