; Reduce currents
M913 Z40       ; set 40% motor drive current

; Set reduced physics parameters to help prevent missed steps
M203 Z1500      ; maximum speed (mm/min)
M201 Z125       ; maximum acceleration (mm/min/s)
M566 Z30         ; instantaneous speed change (mm/min)