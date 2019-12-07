#!/bin/bash

termux-clipboard-get | ssh -i ~/.ssh/id_ed25519 david@185.92.222.226 -p 49138 'tee clipboard.txt'
exit
