; Increase Currents to normal
M913 Z100       ; restore motor current percentage to 100%

; Set physics back to running values
M203 Z3000      ; maximum speed (mm/min)
M201 Z250       ; maximum acceleration (mm/min/s)
M566 Z60       ; instantaneous speed change (mm/min)