ealpha = 0
active = 0
fadeout = 0
rectoffset = 0
maptext = "PLANET SR-388"
timetext = steps_to_time2(global.gametime)
if (global.monstersleft < 10)
    metrtext1 = ("0" + string(global.monstersleft))
else
    metrtext1 = string(global.monstersleft)
if (global.monstersarea < 10)
    metrtext2 = ("0" + string(global.monstersarea))
else
    metrtext2 = string(global.monstersarea)
tip1text = "[Select] -> Equipment"
tip2text = "[Fire] - Place Marker"
tip3text = "[Fire] - Set Marker Position"
tip4text = "[Jump] - Delete Marker"
tip5text = "[Fire] - Edit Marker"
widescreen = oControl.widescreen
widescreen_space = oControl.widescreen_space
