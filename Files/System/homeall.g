; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Sat Apr 17 2021 17:22:41 GMT+0100 (British Summer Time)
G91                   ; relative positioning
G1 H2 Z5 F6000        ; lift Z relative to current position
G1 H1 X155 Y-155 F900 ; move quickly to X or Y endstop and stop there (first pass)
G1 H1 X155            ; home X axis
G1 H1 Y-155           ; home Y axis
G1 X-5 Y5 F6000       ; go back a few mm
G1 H1 X155 F360       ; move slowly to X axis endstop once more (second pass)
G1 H1 Y-155           ; then move slowly to Y axis endstop
G1 H1 Z155 F360       ; move Z up stopping at the endstop
G90                   ; absolute positioning
G92 Z150              ; set Z position to axis maximum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91                  ; relative positioning
;G1 Z5 F100           ; lift Z relative to current position
;G90                  ; absolute positioning


