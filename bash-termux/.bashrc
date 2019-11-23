alias t=task
alias ..='cd ..'
alias tmux='tmux -u'
alias topcmd='top -o CMDLINE,%CPU'

# GIT
alias g="git"
alias ga="git add"
alias gc="git commit"

export EDITOR=nvim

# Functions
function ytdl-playlist () {
  youtube-dl -x -o "%(playlist_index)s - %(title)s.%(ext)s" "$1" 
}
