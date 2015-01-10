# Created by newuser for 5.0.7
alias change-res="xrandr --output VBOX0 --mode "
alias get-scancode="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
