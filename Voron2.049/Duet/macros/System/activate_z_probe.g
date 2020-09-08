; Activates Z probe
; Re-activate z switch and home before printing

M400                                            ; Clear the move buffer
M558 P8 C"^zprobe.in" A5 H5 R0.2 S0.01 F1200 T18000 A1 B0 ; Activate Z Probe
G31 P500 X0 Y25 Z1.7                           ; Set Probe offsets
G4 P200                                         ; Dwell for 200ms