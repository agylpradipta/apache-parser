#!/bin/bash

date_apache=`date --date='10 minutes ago' '+%d/%b/%Y:%H:%M'`
date_file=`date --date='10 minutes ago' '+%d-%b-%Y-%H-%M'`

for f in "$@";do
  if [[ "$f" == access.log* ]];then
     awk '($9 ~ /200/)' "$f" | grep -A 9999 ${date_apache} | awk '{print $7}' | sort | uniq -c | sort -rn >> apache-200-${date_file}.log
  fi
done