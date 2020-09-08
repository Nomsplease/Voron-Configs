; RRF3 Config

; Network
M550 P"Voron V2.049"        ; Set machine name
M552 S1                     ; Enable network
M586 P0 S1                  ; Enable HTTP (for DWC)
M586 P1 S1 T0               ; Enable FTP (for remote backups)
M586 P2 S1 T0               ; Disable Telnet

; General Settings
M111 S0                     ; Debugging Off
G21                         ; Millimeter Units
G90                         ; Absolute Tool Cords
M83                         ; Relative Extruder
M575 P1 S1 B57600			; Enable PanelDue
M667 S1                     ; CoreXY type
M669 K1                     ; CoreXY type

; Drive Mechanics

; --- map ---
;    _______
;   | 6 | 7 |
;   | ----- |
;   | 5 | 8 |
;    -------
;     front
;
;   LEFT______Right
;  | B:0   |   A:1 |
;  -----------------

M569 P0 S1                  ; A (X)
M569 P1 S1                  ; B (Y)
M569 P3 S1                  ; Extruder (E0)
M569 P5 S1                  ; Z1 (E2)
M569 P6 S0                  ; Z2 (E3)
M569 P7 S1                  ; Z3 (E4)
M569 P8 S0                  ; Z4 (E5)

M584 X0 Y1 Z5:6:7:8 E3      ; Bind Motors
M350 X16 Y16 Z16 E16:16 I1  ; Use 1/16 microstepping with interpolation
M92 X160 Y160 Z800          ; Set XYZ steps per mm (0.9deg motors)
M92 E415:415                ; Set Extruder steps per mm (After Burner)
;M350 Z16 I0                ; Disable Z interpolation
M906 X1200 Y1200 Z1200 E600 ; Motor Currents
M84 S3600                   ; Motor Idle timeout (1 Hr)
M906 I50                    ; Motor Idle current percentage
M574 X2 S1 P"!^duex.e3stop"   		; X active high endstop switch
M574 Y2 S1 P"!^duex.e2stop"   		; Y active high endstop switch
M574 Z0 C"nil"              ; Free up Z endstop
M98 P"/macros/System/current_ab_high.g" ; We store our physics in the current files
M98 P"/macros/System/current_z_high.g"  ; We store our physics in the current files
M98 P"/macros/System/activate_z_probe.g"; Activate Probe on startup

; Printer Geometry
M671 X-60:-60:410:410 Y-10:420:420:-10 S20      ; Define Z belts locations (Front_Left, Back_Left, Back_Right, Front_Right)
M208 X0 Y0 Z-3 S1           ; Minimal Axes
M208 X350 Y350 Z350 S0      ; Maximum Axes
M557 X25:325 Y25:295 S25    ; Define bed mesh grid (inductive probe, positions include the Z offset!)
; Pressure advance
M572 D0 S0.025
; DAA
M593 F39.3

; Thermal Settings

;; Bed
M308 S0 P"bedtemp" Y"thermistor" R4700 T100000 B3950 ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"bedheat" T0                                ; create bed heater output on out0 and map it to sensor 0
M143 H0 S120                                         ; set temperature limit for heater 0 to 120C
M307 H0 B0 S0.85                                     ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0												 ; Declare H0 as bed heater

;; Hotend
M308 S1 P"spi.cs1" Y"rtdmax31865"                    ; configure sensor 1 as thermocouple via CS pin spi.cs1
M950 H1 C"e0heat" T1                                 ; create nozzle heater output on e0heat and map it to sensor 1
M143 H1 S280                                         ; set temperature limit for heater 1 to 275C
M307 H1 B0 S1.00                                     ; disable bang-bang mode for the nozzle heater and set PWM limit

;; Chamber
M308 S3 P"duex.cs6" Y"dht22"       A"Chamber Temp"    ; Temperature
M308 S4 P"S3.1"     Y"dhthumidity" A"Chamber Hum[%]"  ; Humidity

;; Boards
M308 S5 Y"drivers" A"Drivers-Duet"
M308 S6 Y"drivers-duex" A"Drivers-Duex"
M308 S7 Y"mcu-temp" A"MCU"

;; PID Settings
M307 H2 B1 S0.01 V23.7							     ;PID for chamber set to reduce chance of faults with no heater
M307 H0 A301.0 C845.3 D1.4 S1.00 V23.6 B0		
M307 H1 A497.2 C209.9 D3.3 S1.00 V23.6 B0            ; Dragon Non-HF W/ Sock

;; MCU Temp Calibration
M912 P0 S-13

; Fans
M106 P1 H-1                 ; Disable auto thermal mode on Fan1

;; Part Cooling
M950 F0 C"duex.fan4" Q500
M106 P0 S0 C"Part Fan"

;; Hotend Fan
M950 F1 C"duex.fan3" Q500
M106 P1 T45 H1 C"Hotend Fan"

;; Basement Cooling
M950 F2 C"fan1" Q500
M106 P2 T45 H1 C"Basement Fan"

;; Exhaust Fan
M950 F3 C"fan0" Q500
M106 P3 T45 H1 C"Exhaust Fan"

; Tools
M563 P0 D0 H1               ; bind tool 0 to drive and heater
G10 P0 X0 Y0 Z0             ; tool offset
G10 P0 S0 R0                ; tool active and standby temp
T0                          ; activate tool 0

; Case Lighting
M950 P6 C"duex.e2heat" Q500 ; Green LED
M950 P7 C"duex.e3heat" Q500 ; Red LED
M950 P8 C"duex.e4heat" Q500 ; Blue LED
M950 P9 C"duex.e5heat" Q500 ; White LED
M42 P6 S0
M42 P7 S0
M42 P8 S0
M42 P9 S1

; Enable Logging
;M929 P"eventlog.txt" S1