; Reduce currents
M913 X60 Y60        ; set 60% current percentage

; Set reduced physics
M203 X4500 Y4500    ; maximum speed (mm/min)
M201 X900 Y900      ; maximum acceleration (mm/min/s)
M566 X100 Y100      ; instantaneous speed change (mm/min)
