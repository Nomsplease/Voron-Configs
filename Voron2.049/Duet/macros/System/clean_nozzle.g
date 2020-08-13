G1 X85 Y350 Z6 F6000          ; Go to purge area
M83                           ; Set Extruder to relative
G92 E0                        ; Zero Extruder
G1 E10 F300                   ; Purge 10mm
G92 E0                        ; Zero Extruder           
G1 E-1 F3000                  ; Retract 1mm
G92 E0                        ; Zero Extruder
G1 X64 Y340 Z4 F6000          ; Go to brush
G1 X34 F6000                  ; Start playing in the brush
G1 X34 Y335 F6000             ; Continue playing
G1 X64 Y335 F6000             ; Repeat
G1 X64 Y340 F6000             ; Go to brush
G1 X34 F6000                  ; Start playing in the brush
G1 X34 Y335 F6000             ; Continue playing
G1 X64 Y335 F6000             ; Repeat
G1 X64 Y340 F6000             ; Go to brush
G1 X34 F6000                  ; Start playing in the brush
G1 X34 Y335 F6000             ; Continue playing
G1 X64 Y335 F6000             ; Time to start work
G1 Z10 F6000                  ; Up Z just to be safe