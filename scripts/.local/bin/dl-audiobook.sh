#!/usr/bin/zsh

audiobookName=$(ssh nl ls -ctr /home/qbt/torrents/audiobooks | tail -n 10 | fzf --tac | tr -d '\n')
noglob proxychains -q rsync -r --progress nl:/home/qbt/torrents/audiobooks/${(qq)audiobookName} ~/audiobooks

