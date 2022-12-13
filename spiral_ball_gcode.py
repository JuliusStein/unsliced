import math

header = """;machine_type: Adventurer 3 Series
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
"""

footer = """;end gcode
M104 S0 T0
M140 S0 T0
G162 Z F1800
G28 X Y
M132 X Y A B
M652
G91
M18
"""

z = 0
e = 17.50
r = 1.5
speed = 100 #120 #80 #240
e_step = .08 #.15
z_step = .1 #.35 #.25 #.10

with open("spiral_ball.g", "w") as f:
    f.write(header)

    while z < (10*(2*math.pi)):

        if(z==0):
            f.write(f"G1 X{round(r*math.cos(z),2)} Y{round(r*math.sin(z),2)} Z{round(z,2)} E{round(e,2)} F{speed}\n")
        elif(z <= (2*math.pi)):
            f.write(f"G1 X{round(r*math.cos(z),2)} Y{round(r*math.sin(z),2)} E{round(e,2)}\n")
        else:
            f.write(f"G1 X{round(r*math.cos(z),2)} Y{round(r*math.sin(z),2)} Z{round(z-2*math.pi,2)} E{round(e,2)}\n")

        z += z_step*math.pi
        e += e_step

        if(z <= (5*(2*math.pi))):
            r += 0.25
        else:
            r -= 0.25

    f.write(footer)