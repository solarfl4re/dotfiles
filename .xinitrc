test -f ~/.Xkeymap && xkbcomp ~/.Xkeymap $DISPLAY

# setxkbmap -layout "us,ru" -variant "colemak," 
# setxkbmap -option "terminate:ctrl_alt_bksp"
# setxkbmap -option "grp:shifts_toggle"

# setxkbmap -option "keypad:pointerkeys"
# setxkbmap -option "ctrl:nocaps"
# setxkbmap -option "ctrl:swap_lwin_lctl"

xrdb -merge ~/.Xresources
VboxClient-all
xmonad
