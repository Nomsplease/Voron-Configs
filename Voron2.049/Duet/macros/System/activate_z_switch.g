; Activates Z switch
; Configure Z offset here in G31

M400                                            ; Clear the move buffer
M558 P8 C"zstop" A5 H5 R0.2 S0.005 F120 T18000 A10 B0 ; Activate Z Probe

;Configure Z offset here
G31 P500 X0 Y25 Z1                              ; Set Probe offsets
;if positive, greater value = lower nozzle
;if negative, more negative = higher nozzle

G4 P200                                         ; Dwell for 200ms