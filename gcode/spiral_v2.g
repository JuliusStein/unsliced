;machine_type: Adventurer 3 Series
;right_extruder_material: PLA
;right_extruder_material_density: 1.24
;filament_diameter0: 1.75
;right_extruder_temperature: 210
;layer_height: 0.18
;perimeter_shells: 2
;top_solid_layers: 4
;bottom_solid_layers: 3
;fill_density: 15%
;fill_pattern: hexagon
;base_print_speed: 60
;travel_speed: 80
;platform_temperature: 65
;right_extruder_temperature_raft0: 215
;right_extruder_temperature_reset: 
;left_extruder_temperature_reset: 
;start gcode
M118 X15.66 Y15.00 Z23.55 T0
M140 S65 T0
M104 S215 T0
M104 S0 T1
M107
G90
G28
M132 X Y Z A B
G1 Z50.000 F420
G161 X Y F3300
M7 T0
M6 T0
M651 S255
;layer_count: 126
M108 T0
G1 X15.00 Y-15.00 F4800
;preExtrude:0.20
M106
G1 Z.200 F420
;structure:pre-extrude
G1 X15.00 Y-15.00 F4800
G1 X15.00 Y15.00 E4.3504 F1200
G1 X-15.00 Y15.00 E8.7009
G1 X-15.00 Y-15.00 E13.0513
G1 X15.00 Y-15.00 E17.4017
;start main print
G1 X2.0 Y0.0 Z0 E17.5 F240
G1 X1.18 Y1.62 E17.7
G1 X-0.62 Y1.9 E17.9
G1 X-1.9 Y0.62 E18.1
G1 X-1.62 Y-1.18 E18.3
G1 X-0.0 Y-2.0 E18.5
G1 X1.62 Y-1.18 E18.7
G1 X1.9 Y0.62 Z0.31 E18.9
G1 X0.62 Y1.9 Z1.26 E19.1
G1 X-1.18 Y1.62 Z2.2 E19.3
G1 X-2.0 Y0.0 Z3.14 E19.5
G1 X-1.18 Y-1.62 Z4.08 E19.7
G1 X0.62 Y-1.9 Z5.03 E19.9
G1 X1.9 Y-0.62 Z5.97 E20.1
G1 X1.62 Y1.18 Z6.91 E20.3
G1 X0.0 Y2.0 Z7.85 E20.5
G1 X-1.62 Y1.18 Z8.8 E20.7
G1 X-1.9 Y-0.62 Z9.74 E20.9
G1 X-0.62 Y-1.9 Z10.68 E21.1
G1 X1.18 Y-1.62 Z11.62 E21.3
G1 X2.0 Y-0.0 Z12.57 E21.5
G1 X1.18 Y1.62 Z13.51 E21.7
G1 X-0.62 Y1.9 Z14.45 E21.9
G1 X-1.9 Y0.62 Z15.39 E22.1
G1 X-1.62 Y-1.18 Z16.34 E22.3
G1 X-0.0 Y-2.0 Z17.28 E22.5
G1 X1.62 Y-1.18 Z18.22 E22.7
G1 X1.9 Y0.62 Z19.16 E22.9
G1 X0.62 Y1.9 Z20.11 E23.1
G1 X-1.18 Y1.62 Z21.05 E23.3
G1 X-2.0 Y0.0 Z21.99 E23.5
G1 X-1.18 Y-1.62 Z22.93 E23.7
G1 X0.62 Y-1.9 Z23.88 E23.9
G1 X1.9 Y-0.62 Z24.82 E24.1
G1 X1.62 Y1.18 Z25.76 E24.3
G1 X0.0 Y2.0 Z26.7 E24.5
G1 X-1.62 Y1.18 Z27.65 E24.7
G1 X-1.9 Y-0.62 Z28.59 E24.9
G1 X-0.62 Y-1.9 Z29.53 E25.1
G1 X1.18 Y-1.62 Z30.47 E25.3
G1 X2.0 Y-0.0 Z31.42 E25.5
G1 X1.18 Y1.62 Z32.36 E25.7
G1 X-0.62 Y1.9 Z33.3 E25.9
G1 X-1.9 Y0.62 Z34.24 E26.1
G1 X-1.62 Y-1.18 Z35.19 E26.3
G1 X-0.0 Y-2.0 Z36.13 E26.5
G1 X1.62 Y-1.18 Z37.07 E26.7
G1 X1.9 Y0.62 Z38.01 E26.9
G1 X0.62 Y1.9 Z38.96 E27.1
G1 X-1.18 Y1.62 Z39.9 E27.3
G1 X-2.0 Y0.0 Z40.84 E27.5
G1 X-1.18 Y-1.62 Z41.78 E27.7
G1 X0.62 Y-1.9 Z42.73 E27.9
G1 X1.9 Y-0.62 Z43.67 E28.1
G1 X1.62 Y1.18 Z44.61 E28.3
G1 X0.0 Y2.0 Z45.55 E28.5
G1 X-1.62 Y1.18 Z46.5 E28.7
G1 X-1.9 Y-0.62 Z47.44 E28.9
G1 X-0.62 Y-1.9 Z48.38 E29.1
G1 X1.18 Y-1.62 Z49.32 E29.3
G1 X2.0 Y-0.0 Z50.27 E29.5
G1 X1.18 Y1.62 Z51.21 E29.7
G1 X-0.62 Y1.9 Z52.15 E29.9
G1 X-1.9 Y0.62 Z53.09 E30.1
G1 X-1.62 Y-1.18 Z54.04 E30.3
G1 X-0.0 Y-2.0 Z54.98 E30.5
G1 X1.62 Y-1.18 Z55.92 E30.7
;end gcode
M104 S0 T0
M140 S0 T0
G162 Z F1800
G28 X Y
M132 X Y A B
M652
G91
M18
