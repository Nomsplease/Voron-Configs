; Pause macro file
M83							   ; relative extruder moves
G92 E0                         ; zero the extruder
G1 E-10.0 F3600                ; retract filament
G91                            ; relative positioning
G1 Z5.00 X20.0 Y20.0 F20000    ; move nozzle to remove stringing
G1 Z2 F3000                    ; move nozzle up 2mm
G90                            ; absolute positioning
G1 X175 Y350 F3600             ; park nozzle at rear