#!/bin/bash

cd ~/Downloads && rsync "$(ls -ctr | tail -n 10 | grep torrent | fzf --tac)" nl:/home/qbt/watch
