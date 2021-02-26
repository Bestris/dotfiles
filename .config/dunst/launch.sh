#!/bin/sh

#        -lf/nf/cf color
#            Defines the foreground color for low, normal and critical notifications respectively.
# 
#        -lb/nb/cb color
#            Defines the background color for low, normal and critical notifications respectively.
# 
#        -lfr/nfr/cfr color
#            Defines the frame color for low, normal and critical notifications respectively.

[ -f "$HOME/.cache/wal/colors.sh" ] && . "$HOME/.cache/wal/colors.sh"

pidof dunst && killall dunst

dunst -lf  "${color15:-#ffffff}" \
      -lb  "${color0:-#eeeeee}" \
      -lfr "${color6:-#dddddd}" \
      -nf  "${color15:-#cccccc}" \
      -nb  "${color0:-#bbbbbb}" \
      -nfr "${color6:-#aaaaaa}" \
      -cf  "${color0:-#999999}" \
      -cb  "${color6:-#888888}" \
      -cfr "${color2:-#777777}" > /dev/null 2>&1 &
