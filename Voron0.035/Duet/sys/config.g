; Configuration file for Duet WiFi (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Thu Aug 06 2020 17:28:32 GMT-0400 (Eastern Daylight Time)

; General preferences
G90                                            ; send absolute coordinates...
M83                                            ; ...but relative extruder moves
M550 P"Voron V0.035"                           ; set printer name
M669 K1                                        ; select CoreXY mode

; Network
M552 S1                                        ; enable network
M586 P0 S1                                     ; enable HTTP
M586 P1 S1                                     ; enable FTP
M586 P2 S1                                     ; enable Telnet

; Drives
M569 P0 S1                                     ; physical drive 0 goes forwards
M569 P1 S1                                     ; physical drive 1 goes forwards
M569 P2 S1                                     ; physical drive 2 goes forwards
M569 P3 S1                                     ; physical drive 3 goes forwards
M584 X0 Y1 Z2 E3                               ; set drive mapping
M350 X16 Y16 Z16 E16 I1                        ; configure microstepping with interpolation
M92 X80 Y80 Z1600 E453                   	   ; set steps per mm

; Physics
M566 X75.00 Y75.00 Z12.00 E120.00            ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z1000.00 E1200.00       ; set maximum speeds (mm/min)
M201 X750.00 Y750.00 Z20.00 E250.00            ; set accelerations (mm/s^2)
M572 D0 S0.15								   ; Pressure Advance


M906 X400 Y400 Z400 E300 I30                   ; set motor currents (mA) and motor idle factor in per cent
M84 S3600                                      ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                               ; set axis minima
M208 X119 Y119 Z120 S0                         ; set axis maxima

; Endstops
M574 X2 S1 P"xstop"                            ; configure active-high endstop for high end on X via pin xstop
M574 Y2 S1 P"ystop"                            ; configure active-high endstop for high end on Y via pin ystop
M574 Z1 S1 P"zstop"                            ; configure active-high endstop for low end on Z via pin zstop

; Z-Probe
M558 P0 H5 F120 T6000                          ; disable Z probe but set dive height, probe speed and travel speed
M557 X15:120 Y15:120 S20                       ; define mesh grid

; Thermal Settings

;; Bed
M308 S0 P"bedtemp" Y"thermistor" R4700 T100000 B3950 ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"bedheat" T0                                ; create bed heater output on out0 and map it to sensor 0
M143 H0 S120                                         ; set temperature limit for heater 0 to 120C
M307 H0 B0 S1.00                                     ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0												 ; Declare H0 as bed heater

;; Hotend
M308 S1 P"spi.cs1" Y"rtdmax31865"                    ; configure sensor 1 as thermocouple via CS pin spi.cs1
M950 H1 C"e0heat" T1                                 ; create nozzle heater output on e0heat and map it to sensor 1
M143 H1 S280                                         ; set temperature limit for heater 1 to 275C
M307 H1 B0 S1.00                                     ; disable bang-bang mode for the nozzle heater and set PWM limit

;; PID Settings
M307 H0 A121.5 C111.7 D1.9 S1.00 V24.1 B0		
M307 H1 A415.6 C166.3 D4.5 S1.00 V24.1 B0            ; Dragon Non-HF W/ Sock

; Fans
M950 F0 C"fan0" Q500                           ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1                                 ; set fan 0 value. Thermostatic control is turned off
M950 F1 C"fan1" Q500                           ; create fan 1 on pin fan1 and set its frequency
M106 P1 S1 H1 T45                              ; set fan 1 value. Thermostatic control is turned on
M950 F2 C"fan2" Q500                           ; create fan 2 on pin fan2 and set its frequency
M106 P2 S1 H1 T45                              ; set fan 2 value. Thermostatic control is turned on

; Tools
M563 P0 D0 H1 F0                               ; define tool 0
G10 P0 X0 Y0 Z0                                ; set tool 0 axis offsets
G10 P0 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
M575 P1 S1 B57600                              ; enable support for PanelDue
T0                                             ; select first tool

; Case Lighting
M950 P6 C"exp.heater3" Q500 ; Green LED
M950 P7 C"exp.heater4" Q500 ; Red LED
M950 P8 C"exp.heater5" Q500 ; Blue LED
M950 P9 C"exp.heater6" Q500 ; White LED
M42 P6 S0
M42 P7 S0
M42 P8 S0
M42 P9 S1
