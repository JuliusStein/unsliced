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
G1 X0 Y0 E17.50
;start main print
G1 X1.5 Y0.0 Z0 E17.5 F100
G1 X1.43 Y0.46 E17.58
G1 X1.21 Y0.88 E17.66
G1 X0.88 Y1.21 E17.74
G1 X0.46 Y1.43 E17.82
G1 X0.0 Y1.5 E17.9
G1 X-0.46 Y1.43 E17.98
G1 X-0.88 Y1.21 E18.06
G1 X-1.21 Y0.88 E18.14
G1 X-1.43 Y0.46 E18.22
G1 X-1.5 Y0.0 E18.3
G1 X-1.43 Y-0.46 E18.38
G1 X-1.21 Y-0.88 E18.46
G1 X-0.88 Y-1.21 E18.54
G1 X-0.46 Y-1.43 E18.62
G1 X-0.0 Y-1.5 E18.7
G1 X0.46 Y-1.43 E18.78
G1 X0.88 Y-1.21 E18.86
G1 X1.21 Y-0.88 E18.94
G1 X1.43 Y-0.46 E19.02
G1 X1.5 Y-0.0 E19.1
G1 X1.43 Y0.46 Z0.31 E19.18
G1 X1.21 Y0.88 Z0.63 E19.26
G1 X0.88 Y1.21 Z0.94 E19.34
G1 X0.46 Y1.43 Z1.26 E19.42
G1 X0.0 Y1.5 Z1.57 E19.5
G1 X-0.46 Y1.43 Z1.88 E19.58
G1 X-0.88 Y1.21 Z2.2 E19.66
G1 X-1.21 Y0.88 Z2.51 E19.74
G1 X-1.43 Y0.46 Z2.83 E19.82
G1 X-1.5 Y0.0 Z3.14 E19.9
G1 X-1.43 Y-0.46 Z3.46 E19.98
G1 X-1.21 Y-0.88 Z3.77 E20.06
G1 X-0.88 Y-1.21 Z4.08 E20.14
G1 X-0.46 Y-1.43 Z4.4 E20.22
G1 X-0.0 Y-1.5 Z4.71 E20.3
G1 X0.46 Y-1.43 Z5.03 E20.38
G1 X0.88 Y-1.21 Z5.34 E20.46
G1 X1.21 Y-0.88 Z5.65 E20.54
G1 X1.43 Y-0.46 Z5.97 E20.62
G1 X1.5 Y-0.0 Z6.28 E20.7
G1 X1.43 Y0.46 Z6.6 E20.78
G1 X1.21 Y0.88 Z6.91 E20.86
G1 X0.88 Y1.21 Z7.23 E20.94
G1 X0.46 Y1.43 Z7.54 E21.02
G1 X0.0 Y1.5 Z7.85 E21.1
G1 X-0.46 Y1.43 Z8.17 E21.18
G1 X-0.88 Y1.21 Z8.48 E21.26
G1 X-1.21 Y0.88 Z8.8 E21.34
G1 X-1.43 Y0.46 Z9.11 E21.42
G1 X-1.5 Y0.0 Z9.42 E21.5
G1 X-1.43 Y-0.46 Z9.74 E21.58
G1 X-1.21 Y-0.88 Z10.05 E21.66
G1 X-0.88 Y-1.21 Z10.37 E21.74
G1 X-0.46 Y-1.43 Z10.68 E21.82
G1 X0.0 Y-1.5 Z11.0 E21.9
G1 X0.46 Y-1.43 Z11.31 E21.98
G1 X0.88 Y-1.21 Z11.62 E22.06
G1 X1.21 Y-0.88 Z11.94 E22.14
G1 X1.43 Y-0.46 Z12.25 E22.22
G1 X1.5 Y0.0 Z12.57 E22.3
G1 X1.43 Y0.46 Z12.88 E22.38
G1 X1.21 Y0.88 Z13.19 E22.46
G1 X0.88 Y1.21 Z13.51 E22.54
G1 X0.46 Y1.43 Z13.82 E22.62
G1 X-0.0 Y1.5 Z14.14 E22.7
G1 X-0.46 Y1.43 Z14.45 E22.78
G1 X-0.88 Y1.21 Z14.77 E22.86
G1 X-1.21 Y0.88 Z15.08 E22.94
G1 X-1.43 Y0.46 Z15.39 E23.02
G1 X-1.5 Y-0.0 Z15.71 E23.1
G1 X-1.43 Y-0.46 Z16.02 E23.18
G1 X-1.21 Y-0.88 Z16.34 E23.26
G1 X-0.88 Y-1.21 Z16.65 E23.34
G1 X-0.46 Y-1.43 Z16.96 E23.42
G1 X0.0 Y-1.5 Z17.28 E23.5
G1 X0.46 Y-1.43 Z17.59 E23.58
G1 X0.88 Y-1.21 Z17.91 E23.66
G1 X1.21 Y-0.88 Z18.22 E23.74
G1 X1.43 Y-0.46 Z18.54 E23.82
G1 X1.5 Y0.0 Z18.85 E23.9
G1 X1.43 Y0.46 Z19.16 E23.98
G1 X1.21 Y0.88 Z19.48 E24.06
G1 X0.88 Y1.21 Z19.79 E24.14
G1 X0.46 Y1.43 Z20.11 E24.22
G1 X-0.0 Y1.5 Z20.42 E24.3
G1 X-0.46 Y1.43 Z20.73 E24.38
G1 X-0.88 Y1.21 Z21.05 E24.46
G1 X-1.21 Y0.88 Z21.36 E24.54
G1 X-1.43 Y0.46 Z21.68 E24.62
G1 X-1.5 Y-0.0 Z21.99 E24.7
G1 X-1.43 Y-0.46 Z22.31 E24.78
G1 X-1.21 Y-0.88 Z22.62 E24.86
G1 X-0.88 Y-1.21 Z22.93 E24.94
G1 X-0.46 Y-1.43 Z23.25 E25.02
G1 X0.0 Y-1.5 Z23.56 E25.1
G1 X0.46 Y-1.43 Z23.88 E25.18
G1 X0.88 Y-1.21 Z24.19 E25.26
G1 X1.21 Y-0.88 Z24.5 E25.34
G1 X1.43 Y-0.46 Z24.82 E25.42
G1 X1.5 Y0.0 Z25.13 E25.5
G1 X1.43 Y0.46 Z25.45 E25.58
G1 X1.21 Y0.88 Z25.76 E25.66
G1 X0.88 Y1.21 Z26.08 E25.74
G1 X0.46 Y1.43 Z26.39 E25.82
G1 X-0.0 Y1.5 Z26.7 E25.9
G1 X-0.46 Y1.43 Z27.02 E25.98
G1 X-0.88 Y1.21 Z27.33 E26.06
G1 X-1.21 Y0.88 Z27.65 E26.14
G1 X-1.43 Y0.46 Z27.96 E26.22
G1 X-1.5 Y-0.0 Z28.27 E26.3
G1 X-1.43 Y-0.46 Z28.59 E26.38
G1 X-1.21 Y-0.88 Z28.9 E26.46
G1 X-0.88 Y-1.21 Z29.22 E26.54
G1 X-0.46 Y-1.43 Z29.53 E26.62
G1 X0.0 Y-1.5 Z29.85 E26.7
G1 X0.46 Y-1.43 Z30.16 E26.78
G1 X0.88 Y-1.21 Z30.47 E26.86
G1 X1.21 Y-0.88 Z30.79 E26.94
G1 X1.43 Y-0.46 Z31.1 E27.02
G1 X1.5 Y0.0 Z31.42 E27.1
G1 X1.43 Y0.46 Z31.73 E27.18
G1 X1.21 Y0.88 Z32.04 E27.26
G1 X0.88 Y1.21 Z32.36 E27.34
G1 X0.46 Y1.43 Z32.67 E27.42
G1 X-0.0 Y1.5 Z32.99 E27.5
G1 X-0.46 Y1.43 Z33.3 E27.58
G1 X-0.88 Y1.21 Z33.62 E27.66
G1 X-1.21 Y0.88 Z33.93 E27.74
G1 X-1.43 Y0.46 Z34.24 E27.82
G1 X-1.5 Y-0.0 Z34.56 E27.9
G1 X-1.43 Y-0.46 Z34.87 E27.98
G1 X-1.21 Y-0.88 Z35.19 E28.06
G1 X-0.88 Y-1.21 Z35.5 E28.14
G1 X-0.46 Y-1.43 Z35.81 E28.22
G1 X0.0 Y-1.5 Z36.13 E28.3
G1 X0.46 Y-1.43 Z36.44 E28.38
G1 X0.88 Y-1.21 Z36.76 E28.46
G1 X1.21 Y-0.88 Z37.07 E28.54
G1 X1.43 Y-0.46 Z37.38 E28.62
G1 X1.5 Y0.0 Z37.7 E28.7
G1 X1.43 Y0.46 Z38.01 E28.78
G1 X1.21 Y0.88 Z38.33 E28.86
G1 X0.88 Y1.21 Z38.64 E28.94
G1 X0.46 Y1.43 Z38.96 E29.02
G1 X-0.0 Y1.5 Z39.27 E29.1
G1 X-0.46 Y1.43 Z39.58 E29.18
G1 X-0.88 Y1.21 Z39.9 E29.26
G1 X-1.21 Y0.88 Z40.21 E29.34
G1 X-1.43 Y0.46 Z40.53 E29.42
G1 X-1.5 Y-0.0 Z40.84 E29.5
G1 X-1.43 Y-0.46 Z41.15 E29.58
G1 X-1.21 Y-0.88 Z41.47 E29.66
G1 X-0.88 Y-1.21 Z41.78 E29.74
G1 X-0.46 Y-1.43 Z42.1 E29.82
G1 X0.0 Y-1.5 Z42.41 E29.9
G1 X0.46 Y-1.43 Z42.73 E29.98
G1 X0.88 Y-1.21 Z43.04 E30.06
G1 X1.21 Y-0.88 Z43.35 E30.14
G1 X1.43 Y-0.46 Z43.67 E30.22
G1 X1.5 Y0.0 Z43.98 E30.3
G1 X1.43 Y0.46 Z44.3 E30.38
G1 X1.21 Y0.88 Z44.61 E30.46
G1 X0.88 Y1.21 Z44.92 E30.54
G1 X0.46 Y1.43 Z45.24 E30.62
G1 X-0.0 Y1.5 Z45.55 E30.7
G1 X-0.46 Y1.43 Z45.87 E30.78
G1 X-0.88 Y1.21 Z46.18 E30.86
G1 X-1.21 Y0.88 Z46.5 E30.94
G1 X-1.43 Y0.46 Z46.81 E31.02
G1 X-1.5 Y-0.0 Z47.12 E31.1
G1 X-1.43 Y-0.46 Z47.44 E31.18
G1 X-1.21 Y-0.88 Z47.75 E31.26
G1 X-0.88 Y-1.21 Z48.07 E31.34
G1 X-0.46 Y-1.43 Z48.38 E31.42
G1 X0.0 Y-1.5 Z48.69 E31.5
G1 X0.46 Y-1.43 Z49.01 E31.58
G1 X0.88 Y-1.21 Z49.32 E31.66
G1 X1.21 Y-0.88 Z49.64 E31.74
G1 X1.43 Y-0.46 Z49.95 E31.82
G1 X1.5 Y0.0 Z50.27 E31.9
G1 X1.43 Y0.46 Z50.58 E31.98
G1 X1.21 Y0.88 Z50.89 E32.06
G1 X0.88 Y1.21 Z51.21 E32.14
G1 X0.46 Y1.43 Z51.52 E32.22
G1 X-0.0 Y1.5 Z51.84 E32.3
G1 X-0.46 Y1.43 Z52.15 E32.38
G1 X-0.88 Y1.21 Z52.46 E32.46
G1 X-1.21 Y0.88 Z52.78 E32.54
G1 X-1.43 Y0.46 Z53.09 E32.62
G1 X-1.5 Y-0.0 Z53.41 E32.7
G1 X-1.43 Y-0.46 Z53.72 E32.78
G1 X-1.21 Y-0.88 Z54.04 E32.86
G1 X-0.88 Y-1.21 Z54.35 E32.94
G1 X-0.46 Y-1.43 Z54.66 E33.02
G1 X0.0 Y-1.5 Z54.98 E33.1
G1 X0.46 Y-1.43 Z55.29 E33.18
G1 X0.88 Y-1.21 Z55.61 E33.26
G1 X1.21 Y-0.88 Z55.92 E33.34
G1 X1.43 Y-0.46 Z56.23 E33.42
;end gcode
M104 S0 T0
M140 S0 T0
G162 Z F1800
G28 X Y
M132 X Y A B
M652
G91
M18
