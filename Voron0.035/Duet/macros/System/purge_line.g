M83                             ; Set Extruder to relative
G92 E0                          ; Zero Extruder
G1 X119 Y2 Z0.2				    ; Go to line start
G1 X60 E10						; Move X to 60 and purge
G1 E-6							; Retract
G92 E0							; Zero Extruder
G1 X50 Y2 Z5				    ; Move away to start print