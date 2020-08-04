; Reduce currents
M913 Z40       ; set 40% motor drive current

; Set reduced physics parameters to help prevent missed steps
M203 Z3000      ; maximum speed (mm/min)
M201 Z400       ; maximum acceleration (mm/min/s)
M566 Z0         ; instantaneous speed change (mm/min)