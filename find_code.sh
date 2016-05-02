#!/bin/bash

# FIXME_INFO_FILE: I use this script to search the code base for variable and function names.
pattern="$1"
if [ -z "$1" ] ; then
   echo "usage: pattern"
   exit 1
fi

find . -type f ! -path "*.git*" ! -name "*.swp" ! -path "*.svn*" -print0 | xargs -0 grep -ni "$1"
