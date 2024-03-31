var tempnumcounter;
global.curropt = 0
if ((!global.shaders_compiled) && (!global.mod_gamebeaten))
    global.curropt = 2
tempnumcounter = 0
if global.shaders_compiled
    num_bwfilter = tempnumcounter++
num_baby = tempnumcounter++
if global.shaders_compiled
    num_MSRfusion = tempnumcounter++
num_IGT = tempnumcounter++
lastitem = tempnumcounter
vTargetY = ((18 * lastitem) + 30)
active = 0
alarm[0] = 5
i = 0
repeat (lastitem + 1)
{
    canedit[i] = 1
    i += 1
}
targety = y
view_object[0] = id
timer = 0
event_user(0)
with (oSS_Control)
    active = 1
with (oSS_Fg)
    active = 1
tip[num_baby] = get_text("ExtrasMenu", "EarlyBaby_Tip")
if global.shaders_compiled
    tip[num_MSRfusion] = get_text("ExtrasMenu", "FusionMSRsuit_Tip")
if global.shaders_compiled
    tip[num_bwfilter] = get_text("ExtrasMenu", "GBFilter_Tip")
tip[num_IGT] = get_text("ExtrasMenu", "IGT_Tip")
tip[lastitem] = get_text("GlobalOptions", "ExitMain_Tip")
global.tiptext = tip[global.curropt]
alarm[1] = 1
modeindex = 0
if (global.gamemode == 3)
    modeindex = get_text("Title-Additions", "GameSlot_NewGame_ClassicMode")
if (global.gamemode == 4)
    modeindex = get_text("Title-Additions", "GameSlot_NewGame_AM2Random")
if (global.gamemode == 5)
    modeindex = get_text("Title-Additions", "GameSlot_NewGame_SplitRandom")
