#! /bin/bash

echo ""
echo "\033[1mUptime y usuarios conectados:\033[0m"
echo ""
w
echo ""

echo "\033[1mÉsta es la temperatura actual de la Raspberry:\033[0m `/opt/vc/bin/vcgencmd measure_temp | grep -o [[:digit:]][[:digit:]].[[:digit:]]`°C"
echo ""

echo "\033[1mIP pública:\033[0m `dig +short myip.opendns.com @resolver1.opendns.com`"
echo ""

echo "\033[1mSesiones de tmux:\033[0m"
tmux list-sessions

exit 0

# Explicación del formato para bold:
# \033 - escaped sequence represents beginning/ending of the style
# lowercase m - indicates the end of he sequence
# [0m - resets all attributes, colors, formatting, etc.
#
# The possible integers are:
# 0 - Normal Style
# 1 - Bold
# 2 - Dim
# 4 - Underlined
# 5 - Blinking
# 7 - Reverse
# 8 - Invisible
