; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)

M400                           ; wait for buffer to clear
G92 E0                         ; zero the extruder
G1 E-6.0 F3600                 ; retract filament
G91                            ; relative positioning
G0 Z1.00 Y20.0 F20000    ; move nozzle to remove stringing
M107                           ; turn off fan
G1 Z2 F3000                    ; move nozzle up 2mm
G90                            ; absolute positioning
G1 X60 Y120 F3600              ; park nozzle at rear