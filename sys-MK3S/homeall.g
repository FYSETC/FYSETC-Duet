; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool on Tue Oct 30 2018 18:50:03 GMT+0800 (中国标准时间)
G91                     ; relative positioning
G1 Z5 F4000 S2          ; lift Z relative to current position
;M98 Pdeployprobe.g      ; deploy mechanical Z probe
G1 S1 X-255 Y-215 F4000 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 X10 Y10 F5000          ; go back a few mm
G1 S1 X-255 Y-215 F3000  ; move slowly to X and Y axis endstops once more (second pass)
G90                     ; absolute positioning
G1 X15 Y15 F5000        ; go to first bed probe point and home Z
G30                     ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 S2 Z5 F4000          ; lift Z relative to current position
;G90                    ; absolute positioning


;M98 Pretractprobe.g     ; retract mechanical Z probe