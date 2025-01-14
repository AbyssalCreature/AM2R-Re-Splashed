var tempcount;
sep = 16
op[50] = instance_create(x, y, oMenuLabel)
op[50].text = "Multitroid settings"
tempcount = 1
op[num_censorip] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_censorip].label = "IP Address Censoring"
op[num_censorip].optionid = num_censorip
op[num_ip] = instance_create(x, (y + (sep * tempcount++)), oOptionLRMod)
op[num_ip].label = "IP Address"
op[num_ip].optionid = num_ip
op[num_port] = instance_create(x, (y + (sep * tempcount++)), oOptionLRMod)
op[num_port].label = "Port"
op[num_port].optionid = num_port
op[num_name] = instance_create(x, (y + (sep * tempcount++)), oOptionLRMod)
op[num_name].label = "Display name"
op[num_name].optionid = num_name
op[num_color] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_color].label = "Preferred color"
op[num_color].optionid = num_color
if (!global.shaders_compiled)
{
    op[num_color].enabled = 0
    canedit[num_color] = 0
}
op[num_palette] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_palette].label = "Palette"
op[num_palette].optionid = num_palette
if (!global.shaders_compiled)
{
    op[num_palette].enabled = 0
    canedit[num_palette] = 0
}
op[num_selfpalette] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_selfpalette].label = "Self palette"
op[num_selfpalette].optionid = num_selfpalette
if (!global.shaders_compiled)
{
    op[num_selfpalette].enabled = 0
    canedit[num_selfpalette] = 0
}
op[num_showname] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_showname].label = "Show names"
op[num_showname].optionid = num_showname
op[num_moderator] = instance_create(x, (y + (sep * tempcount++)), oOptionLRMod)
op[num_moderator].label = "Moderator Password"
op[num_moderator].optionid = num_moderator
op[num_difficulty] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_difficulty].label = "Difficulty"
op[num_difficulty].optionid = num_difficulty
op[num_difficulty].enabled = 0
canedit[num_difficulty] = 0
op[num_elm] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_elm].label = "Extreme Lab Metroids"
op[num_elm].optionid = num_elm
op[num_elm].enabled = 0
canedit[num_elm] = 0
op[num_seedgen] = instance_create(x, (y + (sep * tempcount++)), oPauseOption)
op[num_seedgen].optionid = num_seedgen
op[num_seedgen].label = "Send seed"
op[num_seedgen].enabled = 0
canedit[num_seedgen] = 0
op[num_customseed] = instance_create(x, (y + (sep * tempcount++)), oOptionLRMod)
op[num_customseed].optionid = num_customseed
op[num_customseed].label = "Custom seed"
op[num_customseed].enabled = 0
canedit[num_customseed] = 0
op[num_reset] = instance_create(x, (y + (sep * tempcount++)), oPauseOption)
op[num_reset].optionid = num_reset
op[num_reset].label = "Reset server"
op[num_reset].enabled = 0
canedit[num_reset] = 0
op[num_locklobby] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_locklobby].optionid = num_locklobby
op[num_locklobby].label = "Lock lobby"
op[num_locklobby].enabled = 0
canedit[num_locklobby] = 0
op[num_saxmode] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_saxmode].optionid = num_saxmode
op[num_saxmode].label = "SA-X Mode"
op[num_saxmode].enabled = 0
canedit[num_saxmode] = 0
op[num_connection] = instance_create(x, (y + (sep * tempcount++)), oPauseOption)
op[num_connection].optionid = num_connection
op[num_connection].label = connectiontxt
connID = op[num_connection].id
op[lastitem] = instance_create(x, (y + (sep * (lastitem + 1))), oPauseOption)
op[lastitem].optionid = lastitem
op[lastitem].label = get_text("GlobalOptions", "Exit")
event_user(2)
