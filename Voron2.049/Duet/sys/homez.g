M564 H0                                         ; Enable Non-homed moves
M98 P"/macros/System/current_z_low.g"           ; Lower current
G91												; relative positioning
G1 H2 Z15 F1800                                 ; Lift Z 15
G90                                             ; Absolute Positioning

M98 P"/macros/System/activate_z_probe.g"        ; Activate Z Probe

M98 P"/macros/System/move_bed_center.g"         ; Go to center of the bed
G30 Z-9999                                      ; Do the probe

M98 P"/macros/System/current_z_high.g"          ; Restore current

M564 S1 H1