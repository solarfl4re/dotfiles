#!/usr/bin/zsh

if [[ -n "$@" ]]
then
  cd $1
else
  cd /media/nl/torrents/audiobooks
fi
ls -ct | fzf --bind 'enter:execute(mpv --no-audio-display {})' --bind 'tab:execute(choose-nl-audiobook.sh {})'
 --history=~/.config/fzf/.audiobook

