from math import sin, cos, pi

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
    lines.append("G1 X{} Y{} Z{} F{}\n".format(round(x+3, 2), round(y+3, 2), round(z_start+100, 2), 2400))

    lines.append("G4 P500\n")
    lines.append("G1 X{} Y{} Z{} F{}\n".format(round(x, 2), round(y, 2), round(z_start+3, 2), 2400))
    for i, z_val in enumerate(z_values):
        if i==0:
            lines.append("G1 X{} Y{} Z{} E{} F{}\n".format(x, y, z_val, round(e_base, 2), move_speed))
        else:
            lines.append("G1 X{} Y{} Z{} E{}\n".format(x, y, z_val, round(e_base + eject_rate*i,2)))
    lines.append("G4 P500\n")

    return lines

# make a spiral of a given diameter at a given height
# returns a list of gcode lines
def makeSpiral(x, y, z_start, z_end, r, e_base, eject_rate, height, move_speed):
    # x, y are the coordinates of the center of the collumn
    # z_start, z_end are the start and end z values of the collumn
    # r is the radius of the spiral
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
    lines.append("G1 X{} Y{} Z{} F{}\n".format(round(x+3, 2), round(y+3, 2), round(z_start+100, 2), 2400))
    lines.append("G1 X{} Y{} Z{} E{} F{}\n".format(round(x, 2), round(y, 2), round(z_start+3, 2), round(e_base,2), 2400))
    lines.append("G4 P500\n")
    
    for i, z_val in enumerate(z_values):
        t = 0.1*i*pi
        if i==0:
            lines.append("G1 X{} Y{} Z{} E{} F{}\n".format(round(x + r*cos(t), 2), round(y+ r*sin(t), 2), z_val, round(e_base, 2), move_speed))
        elif t<2*pi or t>z_end - .2*pi:
            lines.append("G1 X{} Y{} E{}\n".format(round(x + r*cos(t), 2), round(y+ r*sin(t), 2), round(e_base + eject_rate*i,2)))
        else:
            lines.append("G1 X{} Y{} Z{} E{}\n".format(round(x + r*cos(t), 2), round(y+ r*sin(t), 2), round(z_val-2*pi,2), round(e_base + eject_rate*i,2)))
    
    lines.append("G4 P500\n")

    return lines

# gets E value as float from a line of gcode containing an E value
def getEVal(e_lines, end):
    if end:
        e_lines = e_lines[::-1]

    for e_line in e_lines:
        if "E" in e_line:

            e_string = ""
            flag = False
            for char in e_line:
                if char == 'E': # start of e value
                    flag = True
                elif char == ' ': # end of e value
                    flag = False
                if flag:
                    e_string += char
            
            e = (float(e_string[1:]))
            print("e: ", e)
            return e

layers = 0
printStarted = False
layer_lines = {}

# read in gcode file and find layer begin lines, storing in dict
with open("gcode/TestObjectA_v2.g", "r") as f:
    lines = f.readlines()
    for num, line in enumerate(lines):
        if ";raft\n" == line:
            printStarted=True
        if "layer" in line and printStarted:
            layers+=1
            layer_lines[layers] = num

print("layers: ", layers)

# create vertical gcode to inject
startInject = 16
endInject = 157
injectLayers = endInject - startInject


newLines = []
oldLines = lines[layer_lines[startInject]:layer_lines[endInject]]

# print("oldLines: ", oldLines[:10])
# input("Press Enter to continue...")

# find e_base value (extrusion value at beginning of first layer)
e_start_lines = oldLines[:10]
e_start = getEVal(e_start_lines, False)
e_stop_lines = oldLines[-10:]
e_stop = getEVal(e_stop_lines, True)

e_range = e_stop - e_start

#Inject gcode below

newLines += lines[:layer_lines[startInject]]

# speed = 30
# e_start += 5
# numCollumns = 4
# eject_rate = round((e_range/injectLayers)/numCollumns,2)
# newLines += makeCollumn(0, -8.2, 3.4, 28.6, e_start, eject_rate, injectLayers, speed)
# newLines += makeCollumn(-8.2, 0, 3.4, 28.6, e_start + (0.25*e_range), eject_rate, injectLayers, speed)
# newLines += makeCollumn(0, 8.2, 3.3, 28.6, e_start + (0.5*e_range), eject_rate, injectLayers, speed)
# # newLines += makeCollumn(8.2, 0, 3.3, 28.6, e_start + (0.75*e_range), eject_rate, injectLayers, speed)

# speed=80
# numSpirals = 4
# eject_rate = round((e_range/injectLayers)*0.25/numSpirals ,2)
# newLines += makeSpiral(0, -7.2, 3.5, 39.6, 1.4, e_start, eject_rate, injectLayers, speed)
# newLines += makeSpiral(-7.2, 0, 3.5, 39.6, 1.4, e_start + (0.25*e_range*.25), eject_rate, injectLayers, speed)
# newLines += makeSpiral(0, 7.2, 3.5, 39.6, 1.4, e_start + (0.5*e_range*.25), eject_rate, injectLayers, speed)
# newLines += makeSpiral(7.2, 0, 3.5, 39.6, 1.4, e_start + (0.75*e_range*.25), eject_rate, injectLayers, speed)

speed=40
numCollumns = 1
eject_rate = round((e_range/injectLayers)*0.25/numCollumns,2)
print("eject_rate: ", eject_rate)

newLines += makeSpiral(0, 0, 3.5, 39.6, 5, e_start, eject_rate, injectLayers, speed)

newLines.append(f"G92 E{e_stop}\n")
newLines += lines[layer_lines[endInject]:]

# write new gcode file
with open("TestObjectA_hybrid_v4.g", "w") as f:
    f.writelines(newLines)