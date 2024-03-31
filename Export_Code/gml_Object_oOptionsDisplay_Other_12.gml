if global.opfullscreen
{
    op[0].optext = get_text("GlobalOptions", "Enabled")
    op[1].label = get_text("OptionsDisplay", "DisplayScale")
}
else
{
    op[0].optext = get_text("GlobalOptions", "Disabled")
    op[1].label = get_text("OptionsDisplay", "WindowSize")
}
if (global.opscale == 0)
    op[1].optext = get_text("OptionsDisplay", "DisplayScale_Stretch")
if (global.opscale == 1)
    op[1].optext = "1X"
if (global.opscale == 2)
    op[1].optext = "2X"
if (global.opscale == 3)
    op[1].optext = "3X"
if (global.opscale == 4)
    op[1].optext = "4X"
if global.opvsync
{
    op[2].optext = get_text("GlobalOptions", "Enabled")
    if (os_type == os_android)
        op[0].optext = get_text("GlobalOptions", "Enabled")
}
else
{
    op[2].optext = get_text("GlobalOptions", "Disabled")
    if (os_type == os_android)
        op[0].optext = get_text("GlobalOptions", "Disabled")
}
if global.opshowhud
    op[3].optext = get_text("GlobalOptions", "Enabled")
else
    op[3].optext = get_text("GlobalOptions", "Disabled")
if global.ophudshowmap
    op[4].optext = get_text("GlobalOptions", "Enabled")
else
    op[4].optext = get_text("GlobalOptions", "Disabled")
if (global.ophudshowmetrcount == 0)
    op[5].optext = get_text("GlobalOptions", "Disabled")
if (global.ophudshowmetrcount == 1)
    op[5].optext = get_text("OptionsDisplay", "MonsterCounter_Local")
if (global.ophudshowmetrcount == 2)
    op[5].optext = get_text("OptionsDisplay", "MonsterCounter_Global")
if global.ophudshowhints
    op[6].optext = get_text("GlobalOptions", "Enabled")
else
    op[6].optext = get_text("GlobalOptions", "Disabled")
switch oControl.mod_buttonsconfig
{
    case 0:
        op[7].optext = get_text("ExtrasMenu", "XBox")
        break
    case 1:
        op[7].optext = get_text("ExtrasMenu", "Playstation")
        break
    case 2:
        op[7].optext = get_text("ExtrasMenu", "NintendoPro")
        break
    case 3:
        op[7].optext = get_text("ExtrasMenu", "SNESColored")
        break
    case 4:
        op[7].optext = get_text("ExtrasMenu", "MOGA")
        break
    case 5:
        op[7].optext = get_text("ExtrasMenu", "OUYA")
        break
    default:
        op[7].optext = "[!]"
}

if global.ophudshowlogmsg
    op[8].optext = get_text("GlobalOptions", "Enabled")
else
    op[8].optext = get_text("GlobalOptions", "Disabled")
op[9].optext = lang[global.currentlanguage]
if (global.curropt == 5)
{
    if (global.ophudshowmetrcount == 0)
        global.tiptext = get_text("OptionsDisplay", "MonsterCounter_Disabled_Tip")
    if (global.ophudshowmetrcount == 1)
        global.tiptext = get_text("OptionsDisplay", "MonsterCounter_Local_Tip")
    if (global.ophudshowmetrcount == 2)
        global.tiptext = get_text("OptionsDisplay", "MonsterCounter_Global_Tip")
}
if global.sensitivitymode
    op[10].optext = get_text("GlobalOptions", "Enabled")
else
    op[10].optext = get_text("GlobalOptions", "Disabled")
if global.widescreen_enabled
    op[11].optext = get_text("GlobalOptions", "Enabled")
else
    op[11].optext = get_text("GlobalOptions", "Disabled")
