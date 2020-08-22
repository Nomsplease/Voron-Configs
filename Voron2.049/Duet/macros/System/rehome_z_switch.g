M98 P"/macros/System/activate_z_switch.g"       ; Actiavte Z nozzle probe
M98 P"/macros/System/move_z_switch.g"           ; Move to Z switch
G30 Z-9999                                      ; Do the probe
G1 Z10 F6000									; Move Z up