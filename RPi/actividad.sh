#! /bin/bash

# Imprime la actividad de los últimos días, sólo contando el día y la hora, y la temperatura, sin toda la info en actividad.log

tail -n 300 /home/pi/actividad.log | grep "up\|°C\|-----"

exit 0
