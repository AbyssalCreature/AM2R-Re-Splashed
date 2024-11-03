ealpha = 0
active = 0
fadeout = 0
fadein = 1
rectoffset = 32
prevsuit = global.currentsuit
hidechangetip = 0
hidetext = 0
maptext = get_text("Subscreen", "Title_Map")
timetext = steps_to_time2(global.gametime)
if (global.monstersleft < 10)
    metrtext1 = ("0" + string(global.monstersleft))
else
    metrtext1 = string(global.monstersleft)
if (global.monstersarea < 10)
    metrtext2 = ("0" + string(global.monstersarea))
else
    metrtext2 = string(global.monstersarea)
tip1text = get_text("Subscreen", "Menu_Tip")
tip2text = get_text("Subscreen", "Marker_Tip")
tip3text = get_text("Subscreen", "MarkerPos_Tip")
tip4text = get_text("Subscreen", "DeleteMarker_Tip")
tip5text = get_text("Subscreen", "EditMarker_Tip")
tip6text = get_text("Misc", "Items_Tip")
etiptext1 = get_text("Subscreen", "SelectItem_Tip")
etiptext2 = get_text("Subscreen", "ToggleItem_Tip")
logtitle = get_text("Subscreen", "Title_Logs")
ltiptext1 = get_text("Subscreen", "SelectCategory_Tip")
ltiptext2 = get_text("Subscreen", "SelectLog_Tip")
ltiptext3 = get_text("Subscreen", "ExpandLog_Tip")
ltiptext4 = get_text("Subscreen", "ScrollText_Tip")
ltiptext5 = get_text("Subscreen", "Back_Tip")
opt_text1 = get_text("Subscreen", "Title_Options")
opt_text2 = ""
missilepressed = 0
itemcollunlock = 0
if (global.unlock[0] == 1 || global.unlock[1] == 1 || global.unlock[2] == 1)
    itemcollunlock = 1
widescreen = oControl.widescreen
widescreen_space = oControl.widescreen_space
