G1 X0 Y350 Z6 F6000           ; Go to purge area
M83                           ; Set Extruder to relative
G92 E0                        ; Zero Extruder
G1 E10 F300                   ; Purge 10mm
G92 E0                        ; Zero Extruder           
G1 E-1 F3000                  ; Retract 1mm
G92 E0                        ; Zero Extruder
G1 X20 Y340 Z2.5 F6000        ; Go to brush
G1 X70 F6000                  ; Start playing in the brush
G1 X20 Y335 F6000             ; Continue playing
G1 X70 Y340 F6000             ; Repeat
G1 X20 Y335 F6000             ; Go to brush
G1 X70 Y340 F6000             ; Repeat
G1 X20 Y335 F6000             ; Go to brush
G1 X70 Y340 F6000             ; Repeat
G1 X20 Y335 F6000             ; Go to brush
G1 X70 Y340 F6000             ; Repeat
G1 X20 Y335 F6000             ; Go to brush
G1 Z15 F6000                  ; Up Z just to be safe