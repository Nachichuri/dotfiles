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

# Explicación del formato para bold:

exit 0
