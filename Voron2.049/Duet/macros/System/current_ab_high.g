; Increase Currents to normal
M913 X100 Y100          ; restore motor current percentage to 100%

; Set physics back to running values
M203 X18000 Y18000 E15000     ; maximum speed (mm/min)
M201 X2500 Y2500 E1800        ; maximum acceleration (mm/sec^2)
M566 X2000 Y2000 E8000        ; instantaneous speed change (mm/min)