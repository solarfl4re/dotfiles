#!/bin/bash

ssh -i ~/.ssh/id_ed25519 david@185.92.222.226 -p 49138 'cat clipboard.txt' | termux-clipboard-set 
exit
