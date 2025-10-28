var tempnumcounter;
global.curropt = 0
if ((!global.shaders_compiled) && (!global.mod_gamebeaten))
    global.curropt = 2
tempnumcounter = 0
if global.shaders_compiled
{
    num_MSRfusion = tempnumcounter++
    num_hud = tempnumcounter++
    num_color = tempnumcounter++
    num_gamehud = tempnumcounter++
}
lastitem = tempnumcounter
vTargetY = 18 * lastitem + 30
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
if global.shaders_compiled
{
    tip[num_MSRfusion] = "Suit Style"
    tip[num_hud] = "Sets whether you want GUI to be palette swapped."
    tip[num_color] = "Sets your GUI color when 'Select Color' is chosen above."
    tip[num_gamehud] = "Sets whether only the In-Game hud gets palette swapped."
}
tip[lastitem] = get_text("GlobalOptions", "ExitMain_Tip")
global.tiptext = tip[global.curropt]
alarm[1] = 1
event_user(2)
