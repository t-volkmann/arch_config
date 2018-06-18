#!/usr/bin/env sh

one_min_avg=$(less /proc/loadavg | cut -d ' ' -f1)
echo "$one_min_avg"
