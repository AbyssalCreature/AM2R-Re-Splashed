if (os_type != os_android)
{
    if global.opfullscreen
    {
        op[opFullscreen].optext = get_text("GlobalOptions", "Enabled")
        op[opScale].label = get_text("OptionsDisplay", "DisplayScale")
    }
    else
    {
        op[opFullscreen].optext = get_text("GlobalOptions", "Disabled")
        op[opScale].label = get_text("OptionsDisplay", "WindowSize")
    }
    switch global.opscale
    {
        case 0:
            op[opScale].optext = get_text("OptionsDisplay", "DisplayScale_Stretch")
            break
        case 1:
            op[opScale].optext = "1X"
            break
        case 2:
            op[opScale].optext = "2X"
            break
        case 3:
            op[opScale].optext = "3X"
            break
        case 4:
            op[opScale].optext = "4X"
            break
        default:
            op[opScale].optext = "[!]"
            break
    }

}
if global.opvsync
    op[opVSync].optext = get_text("GlobalOptions", "Enabled")
else
    op[opVSync].optext = get_text("GlobalOptions", "Disabled")
if global.sensitivitymode
    op[opSensitivity].optext = get_text("GlobalOptions", "Enabled")
else
    op[opSensitivity].optext = get_text("GlobalOptions", "Disabled")
if global.widescreen_enabled
    op[opWidescreen].optext = get_text("GlobalOptions", "Enabled")
else
    op[opWidescreen].optext = get_text("GlobalOptions", "Disabled")
if global.opshowhud
    op[opShowHUD].optext = get_text("GlobalOptions", "Enabled")
else
    op[opShowHUD].optext = get_text("GlobalOptions", "Disabled")
if global.ophudshowmap
    op[opShowMap].optext = get_text("GlobalOptions", "Enabled")
else
    op[opShowMap].optext = get_text("GlobalOptions", "Disabled")
switch global.ophudshowmetrcount
{
    case 0:
        op[opCounterStyle].optext = get_text("GlobalOptions", "Disabled")
        break
    case 1:
        op[opCounterStyle].optext = get_text("OptionsDisplay", "MonsterCounter_Local")
        break
    case 2:
        op[opCounterStyle].optext = get_text("OptionsDisplay", "MonsterCounter_Global")
        break
    default:
        op[opCounterStyle].optext = "[!]"
        break
}

if (global.curropt == opCounterStyle)
{
    switch global.ophudshowmetrcount
    {
        case 0:
            global.tiptext = get_text("OptionsDisplay", "MonsterCounter_Disabled_Tip")
            break
        case 1:
            global.tiptext = get_text("OptionsDisplay", "MonsterCounter_Local_Tip")
            break
        case 2:
            global.tiptext = get_text("OptionsDisplay", "MonsterCounter_Global_Tip")
            break
        default:
            global.tiptext = "[!]"
            break
    }

}
if global.ophudshowhints
    op[opShowHints].optext = get_text("GlobalOptions", "Enabled")
else
    op[opShowHints].optext = get_text("GlobalOptions", "Disabled")
if buttonsEnabled
{
    switch oControl.mod_buttonsconfig
    {
        case 0:
            op[opButtonType].optext = get_text("ExtrasMenu", "XBox")
            break
        case 1:
            op[opButtonType].optext = get_text("ExtrasMenu", "Playstation")
            break
        case 2:
            op[opButtonType].optext = get_text("ExtrasMenu", "NintendoPro")
            break
        case 3:
            op[opButtonType].optext = get_text("ExtrasMenu", "SNESColored")
            break
        case 4:
            op[opButtonType].optext = get_text("ExtrasMenu", "MOGA")
            break
        case 5:
            op[opButtonType].optext = get_text("ExtrasMenu", "OUYA")
            break
        default:
            op[opButtonType].optext = "[!]"
            break
    }

}
if global.ophudshowlogmsg
    op[opShowScans].optext = get_text("GlobalOptions", "Enabled")
else
    op[opShowScans].optext = get_text("GlobalOptions", "Disabled")
op[opLanguage].optext = lang[global.currentlanguage]
