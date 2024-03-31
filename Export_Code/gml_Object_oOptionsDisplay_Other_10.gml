var i, author2text;
i = 1
op[50] = instance_create(x, y, oMenuLabel)
op[50].text = get_text("OptionsDisplay", "Title_Display")
if (os_type != os_android)
{
    op[opFullscreen] = instance_create(x, (y + (SPACER * i)), oOptionLR)
    op[opFullscreen].label = get_text("OptionsDisplay", "Fullscreen")
    op[opFullscreen].optionid = opFullscreen
    i++
    op[opScale] = instance_create(x, (y + (SPACER * i)), oOptionLR)
    if global.opfullscreen
        op[opScale].label = get_text("OptionsDisplay", "DisplayScale")
    else
        op[opScale].label = get_text("OptionsDisplay", "WindowSize")
    op[opScale].optionid = opScale
    i++
}
op[opVSync] = instance_create(x, (y + (SPACER * i)), oOptionLR)
op[opVSync].label = get_text("OptionsDisplay", "VSync")
op[opVSync].optionid = opVSync
i++
op[opSensitivity] = instance_create(x, (y + (SPACER * i)), oOptionLR)
op[opSensitivity].label = get_text("Misc", "SensitivityMode")
op[opSensitivity].optionid = opSensitivity
i++
op[opWidescreen] = instance_create(x, (y + (SPACER * i)), oOptionLR)
op[opWidescreen].label = get_text("Misc", "Widescreen")
op[opWidescreen].optionid = opWidescreen
i++
op[51] = instance_create(x, (y + (SPACER * i)), oMenuLabel)
op[51].text = get_text("OptionsDisplay", "Title_HUD")
i++
op[opShowHUD] = instance_create(x, (y + (SPACER * i)), oOptionLR)
op[opShowHUD].label = get_text("OptionsDisplay", "HUDDisplay")
op[opShowHUD].optionid = opShowHUD
i++
op[opShowMap] = instance_create(x, (y + (SPACER * i)), oOptionLR)
op[opShowMap].label = get_text("OptionsDisplay", "HUDMap")
op[opShowMap].optionid = opShowMap
i++
op[opCounterStyle] = instance_create(x, (y + (SPACER * i)), oOptionLR)
op[opCounterStyle].label = get_text("OptionsDisplay", "MonsterCounter")
op[opCounterStyle].optionid = opCounterStyle
i++
op[52] = instance_create(x, (y + (SPACER * i)), oMenuLabel)
op[52].text = get_text("OptionsDisplay", "Title_Notifications")
i++
op[opShowHints] = instance_create(x, (y + (SPACER * i)), oOptionLR)
op[opShowHints].label = get_text("OptionsDisplay", "Hints")
op[opShowHints].optionid = opShowHints
i++
if buttonsEnabled
{
    op[opButtonType] = instance_create(x, (y + (SPACER * i)), oOptionLR)
    op[opButtonType].label = get_text("ExtrasMenu", "Controller")
    op[opButtonType].optionid = opButtonType
    i++
}
op[opShowScans] = instance_create(x, (y + (SPACER * i)), oOptionLR)
op[opShowScans].label = get_text("OptionsDisplay", "ScanNotifications")
op[opShowScans].optionid = opShowScans
i++
op[opLanguage] = instance_create(x, (y + (SPACER * i)), oOptionLR)
op[opLanguage].label = get_text("OptionsDisplay", "Language")
op[opLanguage].optionid = opLanguage
i++
op[53] = instance_create(x, (y + (SPACER * i)), oPauseOption)
op[53].label = ((get_text("OptionsDisplay", "Author") + " ") + langAuthor[global.currentlanguage])
op[53].optionid = 53
op[53].canEdit = 0
op[53].color = 8421504
i++
author2text = get_text("OptionsDisplay", "Author")
op[54] = instance_create((x + 8), (y + (SPACER * i)), oPauseOption)
op[54].label = langAuthor2[global.currentlanguage]
op[54].optionid = 54
op[54].canEdit = 0
op[54].color = 8421504
i++
op[menuSize] = instance_create(x, (y + (SPACER * i)), oPauseOption)
op[menuSize].optionid = menuSize
op[menuSize].label = get_text("GlobalOptions", "Exit")
event_user(2)
