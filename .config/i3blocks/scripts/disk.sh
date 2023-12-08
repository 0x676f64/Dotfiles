#!/usr/bin/env bash

used_root=$(df -H / | awk 'NR==2 { print $3 }')

printf "󰋊: %s\n" $used_root
