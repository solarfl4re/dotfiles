#!/usr/bin/zsh

# Is WG1 up?
if [[ -n $(ip a show wg1 | grep 10.0.1.\*) ]]
then
  # Then scp over Wireguard interface
  remote=nl-wg
else
  remote=nl
fi

cd ~/Downloads
file=$(ls -ct | grep torrent | fzf)
scp "$file" $remote:/home/qbt/watch
result=$?
if [[ $? -ne 0 ]]
then
  echo Failed to upload $file to $remote.
else
  echo Uploaded $file to $remote.
fi
exit $result
