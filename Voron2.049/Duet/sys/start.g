; start.g
; Called by slicer at print start

M561											; Clear any loaded Transforms

if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28

; Home Z to Z switch
M98 P"/macros/System/activate_z_switch.g"       ; Activate Z Switch
M98 P"/macros/System/move_z_switch.g"           ; Go to z switch
M400                                            ; Wait for move buffer to clear
G30 Z-9999                                      ; Do the probe
G1 Z10 F6000									; Move Z up

;M98 P"/macros/System/clean_nozzle.g"			; Clean Nozzle

;M98 P"/macros/System/activate_z_switch.g"       ; Activate Z Switch
;M98 P"/macros/System/move_z_switch.g"           ; Go to z switch
;M400                                            ; Wait for move buffer to clear
;G30 Z-9999                                      ; Do the probe
;G1 Z10 F6000									; Move Z up
;M98 P"/macros/System/move_bed_center.g"         ; Go to bed center

G29 S1											; Load mesh