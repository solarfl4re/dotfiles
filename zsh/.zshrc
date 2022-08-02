# use VI keys
bindkey -v

# Completion
autoload -Uz compinit promptinit
compinit
promptinit
setopt complete_aliases
# Arrow-driven menu
zstyle ':completion:*' menu select

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

prompt walters

setopt autocd
setopt nocaseglob

# History
SAVEHIST=4000
HISTSIZE=2000
HISTFILE=~/.zhistory
setopt sharehistory
setopt appendhistory
setopt inc_append_history
# Manage history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_reduce_blanks

setopt hist_verify

# Correct mistyped shell commands
setopt correct
#setopt correct_all

export EDITOR=nvim

# Key Bindings
# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[ShiftTab]="${terminfo[kcbt]}"

# setup key accordingly
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"      beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"       end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"    overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}" backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"    delete-char
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"        up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"      down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"      backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"     forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"    beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"  end-of-buffer-or-history
[[ -n "${key[ShiftTab]}"  ]] && bindkey -- "${key[ShiftTab]}"  reverse-menu-complete

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start {
		echoti smkx
	}
	function zle_application_mode_stop {
		echoti rmkx
	}
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

function startvnc {
  vncserver -geometry 1400x1050
}

function adestart { 
  WINEPREFIX=/media/sdcard/david/.adewine/ wine /media/sdcard/david/.adewine//drive_c/Program\ Files/Adobe\ Digital\ Editions\ 2.0/DigitalEditions.exe "$@" >/dev/null 2>&1 & 
}

# Source my aliases
source $HOME/.aliases

# Source other stuff
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh


#export WSL_HOST=$(cat /etc/resolv.conf | grep nameserver | awk {'print $2; exit;'})
#export ADB_SERVER_SOCKET=tcp:$WSL_HOST:5037
export PATH=~/.local/bin:${PATH}

# HighDPI scaling: scale by 2 and then use
# xrandr to scale the display down
# (https://ricostacruz.com/til/fractional-scaling-on-xorg-linux)
#export GDK_SCALE=2
#export GDK_DPI_SCALE=2
#export QT_AUTO_SCREEN_SET_FACTOR=0
#export QT_SCALE_FACTOR=1
#export QT_FONT_DPI=96

# for SSH agent .service
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
# Wine
export WINEPREFIX=~/.local/wine
export TERMINAL=alacritty

# Node.js stuff
export npm_config_prefix="~/.local/"
# Too slow!
#source /usr/share/nvm/init-nvm.sh
