; Increase Currents to normal
M913 X100 Y100          ; restore motor current percentage to 100%

; Set physics back to running values
M203 X18000 Y18000      ; maximum speed (mm/min)
M201 X2500 Y2500        ; maximum acceleration (mm/min)
M566 X1000 Y1000         ; instantaneous speed change (mm/min)