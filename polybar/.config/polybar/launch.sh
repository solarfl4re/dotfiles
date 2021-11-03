#!/usr/bin/bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar.log
polybar bar -r 2>&1 | tee -a /tmp/polybar.log & disown
