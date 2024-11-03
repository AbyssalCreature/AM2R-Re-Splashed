op[50].text = get_text("OptionsDisplay", "Title_Display")
if (os_type != os_android)
{
    op[opFullscreen].label = get_text("OptionsDisplay", "Fullscreen")
    if global.opfullscreen
        op[opScale].label = get_text("OptionsDisplay", "DisplayScale")
    else
        op[opScale].label = get_text("OptionsDisplay", "WindowSize")
}
op[opVSync].label = get_text("OptionsDisplay", "VSync")
op[51].text = get_text("OptionsDisplay", "Title_HUD")
op[opSensitivity].label = get_text("Misc", "SensitivityMode")
op[opWidescreen].label = get_text("Misc", "Widescreen")
op[opShowHUD].label = get_text("OptionsDisplay", "HUDDisplay")
op[opShowMap].label = get_text("OptionsDisplay", "HUDMap")
op[opCounterStyle].label = get_text("OptionsDisplay", "MonsterCounter")
op[52].text = get_text("OptionsDisplay", "Title_Notifications")
op[opShowHints].label = get_text("OptionsDisplay", "Hints")
if buttonsEnabled
    op[opButtonType].label = get_text("ExtrasMenu", "Controller")
op[opShowScans].label = get_text("OptionsDisplay", "ScanNotifications")
op[opLanguage].label = get_text("OptionsDisplay", "Language")
op[53].label = ((get_text("OptionsDisplay", "Author") + " ") + langAuthor[global.currentlanguage])
op[54].label = langAuthor2[global.currentlanguage]
op[menuSize].label = get_text("GlobalOptions", "Exit")
with (oSS_Fg)
{
    opt_text1 = get_text("Subscreen", "Title_Options")
    tip1text = get_text("Subscreen", "Menu_Tip")
}
