var tempcount;
sep = 16
op[50] = instance_create(x, y, oMenuLabel)
op[50].text = get_text("ExtrasMenu", "Title_Extras")
tempcount = 1
if global.shaders_compiled
{
    op[num_bwfilter] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
    op[num_bwfilter].label = get_text("ExtrasMenu", "GBFilter")
    op[num_bwfilter].optionid = num_bwfilter
}
op[num_baby] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_baby].label = get_text("ExtrasMenu", "EarlyBaby")
op[num_baby].optionid = num_baby
if (global.mod_gamebeaten == 0)
{
    op[num_baby].enabled = 0
    canedit[num_baby] = 0
}
if global.shaders_compiled
{
    op[num_MSRfusion] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
    op[num_MSRfusion].label = get_text("ExtrasMenu", "FusionMSRsuit")
    op[num_MSRfusion].optionid = num_MSRfusion
    if (global.mod_fusion_unlocked == 0)
    {
        op[num_MSRfusion].enabled = 0
        canedit[num_MSRfusion] = 0
    }
}
op[num_IGT] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_IGT].label = get_text("ExtrasMenu", "IGT")
op[num_IGT].optionid = num_IGT
if (global.mod_gamebeaten == 0)
{
    op[num_IGT].enabled = 0
    canedit[num_IGT] = 0
}
op[lastitem] = instance_create(x, (y + (sep * (lastitem + 1))), oPauseOption)
op[lastitem].optionid = lastitem
op[lastitem].label = get_text("GlobalOptions", "Exit")
event_user(2)
