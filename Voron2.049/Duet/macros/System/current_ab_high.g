; Increase Currents to normal
M913 X100 Y100          ; restore motor current percentage to 100%

; Set physics back to running values
M203 X18000 Y18000      ; maximum speed (mm/min)
M201 X3600 Y3200        ; maximum acceleration (mm/min/s)
M566 X1100 Y900         ; instantaneous speed change (mm/min)