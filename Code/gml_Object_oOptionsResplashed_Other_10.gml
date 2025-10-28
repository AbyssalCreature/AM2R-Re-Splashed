var tempcount;
sep = 16
op[50] = instance_create(x, y, oMenuLabel)
op[50].text = "Re-Splashed Settings"
tempcount = 1
if global.shaders_compiled
{
    op[num_MSRfusion] = instance_create(x, (y + sep * tempcount++), oOptionLR)
    op[num_MSRfusion].label = get_text("ExtrasMenu", "FusionMSRsuit")
    op[num_MSRfusion].optionid = num_MSRfusion
    op[num_hud] = instance_create(x, (y + sep * tempcount++), oOptionLR)
    op[num_hud].label = "HUD Style"
    op[num_hud].optionid = num_hud
    op[num_color] = instance_create(x, (y + sep * tempcount++), oOptionLR)
    op[num_color].label = "HUD Color"
    op[num_color].optionid = num_color
    op[num_gamehud] = instance_create(x, (y + sep * tempcount++), oOptionLR)
    op[num_gamehud].label = "HUD Only In-Game"
    op[num_gamehud].optionid = num_gamehud
}
op[lastitem] = instance_create(x, (y + sep * (lastitem + 1)), oPauseOption)
op[lastitem].optionid = lastitem
op[lastitem].label = get_text("GlobalOptions", "Exit")
