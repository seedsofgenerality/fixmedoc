#!/bin/bash

find -L . -type f ! -name "*.swp" ! -path "*.svn*" ! -path "*.git*" -print0 | xargs -0 grep -n FIXME_INFO | grep -v FIXME_INFO_IGNORE
