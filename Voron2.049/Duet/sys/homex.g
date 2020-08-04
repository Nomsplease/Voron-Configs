; Move Z up to avoid collision
M98 P"/macros/System/current_z_low.g"
G91												; relative positioning
G1 H2 Z5 F1800
M98 P"/macros/System/current_z_high.g"

; Home X
G91                             				; relative positioning
M98 P"/macros/System/current_ab_low.g"
G1 H1 X360 F6000                				; +X probe move, fast.
M98 P"/macros/System/current_ab_high.g"
G1 H2 X-1.5 F6000                   			; back off from the endstop
G1 H1 X3 F60                  					; +X probe move, slow
G1 H2 X-5 F6000                   				; back off from the endstop
G1 X350 F6000                   				; Park at home

; Put Z back
M98 P"/macros/System/current_z_low.g"
G91                             				; relative positioning
G1 H2 Z-5 F1800
M98 P"/macros/System/current_z_high.g"