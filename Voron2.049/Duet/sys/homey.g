; Move Z up to avoid collision
M98 P"/macros/System/current_z_low.g"
G91												; relative positioning
G1 H2 Z5 F1800
M98 P"/macros/System/current_z_high.g"

; Home Y
G91                             				; relative positioning
M98 P"/macros/System/current_ab_low.g"
G1 H1 Y360 F6000                				; +Y probe move, fast.
M98 P"/macros/System/current_ab_high.g"
G1 H2 Y-1.5 F6000                   			; back off from the endstop
G1 H1 Y3 F60                  					; +Y probe move, slow
G1 H2 Y-5 F6000                   				; back off from the endstop
G1 Y350 F6000                   				; Park at home

; Put Z back
M98 P"/macros/System/current_z_low.g"
G91                             				; relative positioning
G1 H2 Z-5 F1800
M98 P"/macros/System/current_z_high.g"