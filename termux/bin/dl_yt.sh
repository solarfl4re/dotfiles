#!/bin/bash

youtube-dl -f bestaudio -x --no-progress -o "~/storage/music/YouTube/%(title)s.%(ext)s" "$1"
