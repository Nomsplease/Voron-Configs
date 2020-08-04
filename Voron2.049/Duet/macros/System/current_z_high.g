; Increase Currents to normal
M913 Z100       ; restore motor current percentage to 100%

; Set physics back to running values
M203 Z8000      ; maximum speed (mm/min)
M201 Z800       ; maximum acceleration (mm/min/s)
M566 Z120       ; instantaneous speed change (mm/min)