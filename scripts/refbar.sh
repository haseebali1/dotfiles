#!/usr/bin/env bash

#pkill -SIGTRAP dwmbar
#kill "$(pstree -lp | grep -- -dwmbar\([0-9] | sed "s/.*sleep(\([0-9]\+\)).*/\1/")"
kill $(ps aux | grep "sleep 1m" | grep -v "grep" | awk '{print $2}')
