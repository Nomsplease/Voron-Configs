M561                                            ; clear any bed transform
M98 P"/macros/System/current_z_low.g"           ; Set our Z currents low
M98 P"/macros/System/current_ab_low.g"           ; Set our AB currents low
M98 P"/macros/System/activate_z_probe.g"        ; Activate Z Probe

; Home, but only if homing is needed
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28

while true
  if iterations = 5
    abort "Too many auto calibration attempts"
  
  G30 P0 X300 Y275 Z-99999 ; probe near front left belt
  if result != 0
    continue
  
  G30 P1 X300 Y50 Z-99999 ; probe near back left belt
  if result != 0
    continue
  
  G30 P2 X50 Y50 Z-99999 ; probe near back right belt 
  if result != 0
    continue

  G30 P3 X50 Y275 Z-99999 S4 ; probe near front right belt 
  if result != 0
    continue


  if move.calibration.initial.deviation <= 0.01
    break

  ; If there were too many errors or the deviation is too high - abort and notify user  
  echo "Repeating calibration because deviation is too high (" ^ move.calibration.initial.deviation ^ "mm)"
; end loop
echo "Auto calibration successful, deviation", move.calibration.initial.deviation ^ "mm"

; Perform nozzle cleaning
;M98 P"/macros/Maintenance/nozzle_brush.g"

; Home Z to Z switch
M98 P"/macros/System/activate_z_switch.g"       ; Activate Z Switch
M98 P"/macros/System/move_z_switch.g"           ; Go to z switch
M400                                            ; Wait for move buffer to clear
G30 Z-9999                                      ; Do the probe