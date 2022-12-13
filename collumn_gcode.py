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
G1 X0 Y0 E18
;start main print
"""

footer = """;end gcode
G1 X0 Y0 Z140 F3000
M104 S0 T0
M140 S0 T0
G162 Z F1800
G28 X Y
M132 X Y A B
M652
G91
M18
"""

# make a collumn of a given diameter at a given height
# returns a list of gcode lines
def makeCollumn(x, y, z_start, z_end, e_base, eject_rate, height, move_speed):
    # x, y are the coordinates of the center of the collumn
    # z_start, z_end are the start and end z values of the collumn
    # e_base is the starting extrusion value
    # eject_rate is the rate of the print head's fillament extrusion
    # height is the height of the collumn in layers
    # move_speed is the speed of the extruder in mm/min

    # make a list of the z values of each point
    layer_height = (z_end - z_start)/height
    #eject_rate = ((thickness-1)*0.05) + 0.1

    z_values = []
    for i in range(int(height)):
        z_values.append(round(z_start + (i*layer_height), 2))

    # make a list of lines for each layer
    lines = []
    lines.append("G1 X140 Y140 Z140 F3000\n")
    lines.append("G4 P500")
    lines.append("G1 X{} Y{} Z{} F{}\n".format(x+3, y+3, z_start+3, 2400))
    for i, z_val in enumerate(z_values):
        if i==0:
            lines.append("G1 X{} Y{} Z{} E{} F{}\n".format(x, y, z_val, e_base, move_speed))
        else:
            lines.append("G1 X{} Y{} Z{} E{}\n".format(x, y, z_val, round(e_base + eject_rate*i,2)))

    return lines


x,y,z = 0,0,0
e=18
speed = 30
thickness = 4

with open("column_v2.g", "w") as f:
    f.write(header)

    f.writelines(makeCollumn(0, 0, 0, 20, e, thickness, 104, speed))

    f.write(footer)


# -- Old code -- 
# while z < (50): 
#     if(z==0):
#         f.write(f"G1 X{0} Y{0} Z{round(z,2)} E{round(e,2)} F{speed}\n")
#     else:
#         f.write(f"G1 X{0} Y{0} Z{round(z,2)} E{round(e,2)}\n")

#     z += 0.25
#     e += eject_rate