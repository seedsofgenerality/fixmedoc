#!/bin/bash
# Copyright (c) 2017 Christopher Lewis Marshall
 
if [ -z "$1" ]; then
   egrep "FIXME_INFO_CLASS:|FIXME_INFO_FN:|FIXME_INFO_TYPE:|FIXME_INFO_CONTROL:|FIXME_INFO_DB:|FIXME_INFO_FILE:" # FIXME_INFO_IGNORE
else
   if [ "$1" == "req" ] ; then
      egrep "FIXME_INFO_CLASS:|FIXME_INFO_FN:|FIXME_INFO_TYPE:|FIXME_INFO_CONTROL:|FIXME_INFO_DB:|FIXME_INFO_FILE:|FIXME_INFO_REQ" # FIXME_INFO_IGNORE
   elif [ "$1" == "unit" ] ; then
      egrep "FIXME_INFO_CLASS:|FIXME_INFO_FN:|FIXME_INFO_TYPE:|FIXME_INFO_CONTROL:|FIXME_INFO_DB:|FIXME_INFO_FILE:|FIXME_INFO_UNIT_TEST" # FIXME_INFO_IGNORE
   else
      egrep "FIXME_INFO_CLASS:|FIXME_INFO_FN:|FIXME_INFO_TYPE:|FIXME_INFO_CONTROL:|FIXME_INFO_DB:|FIXME_INFO_FILE:|FIXME_INFO_ISSUE_${1}_" # FIXME_INFO_IGNORE
   fi
fi
