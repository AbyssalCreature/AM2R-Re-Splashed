var i;
y -= 8
sep = 16
i = 1
op[50] = instance_create(x, (y * i), oMenuLabel)
op[50].text = get_text("OptionsDisplay", "Title_Display")
op[0] = instance_create(x, (y + (sep * i)), oOptionLR)
op[0].label = get_text("OptionsDisplay", "Fullscreen")
op[0].optionid = 0
i++
if (os_type == os_android)
    op[0].label = get_text("OptionsDisplay", "VSync")
op[1] = instance_create(x, (y + (sep * i)), oOptionLR)
if global.opfullscreen
    op[1].label = get_text("OptionsDisplay", "DisplayScale")
else
    op[1].label = get_text("OptionsDisplay", "WindowSize")
op[1].optionid = 1
if (os_type == os_android)
{
    op[1].visible = false
    global.canedit[1] = 0
}
i++
op[2] = instance_create(x, (y + (sep * i)), oOptionLR)
op[2].label = get_text("OptionsDisplay", "VSync")
op[2].optionid = 2
if (os_type == os_android)
{
    op[2].visible = false
    global.canedit[2] = 0
    i = 1
}
i++
op[10] = instance_create(x, (y + (sep * i)), oOptionLR)
op[10].label = get_text("Misc", "SensitivityMode")
op[10].optionid = 10
i++
op[11] = instance_create(x, (y + (sep * i)), oOptionLR)
op[11].label = get_text("Misc", "Widescreen")
op[11].optionid = 11
i++
op[51] = instance_create(x, (y + (sep * i)), oMenuLabel)
op[51].text = get_text("OptionsDisplay", "Title_HUD")
i++
op[3] = instance_create(x, (y + (sep * i)), oOptionLR)
op[3].label = get_text("OptionsDisplay", "HUDDisplay")
op[3].optionid = 3
i++
op[4] = instance_create(x, (y + (sep * i)), oOptionLR)
op[4].label = get_text("OptionsDisplay", "HUDMap")
op[4].optionid = 4
i++
op[5] = instance_create(x, (y + (sep * i)), oOptionLR)
op[5].label = get_text("OptionsDisplay", "MonsterCounter")
op[5].optionid = 5
i++
op[52] = instance_create(x, (y + (sep * i)), oMenuLabel)
op[52].text = get_text("OptionsDisplay", "Title_Notifications")
i++
op[6] = instance_create(x, (y + (sep * i)), oOptionLR)
op[6].label = get_text("OptionsDisplay", "Hints")
op[6].optionid = 6
i++
op[7] = instance_create(x, (y + (sep * i)), oOptionLR)
op[7].label = get_text("ExtrasMenu", "Controller")
op[7].optionid = 7
if ((os_type != os_android && (!gamepad_is_connected(global.gamepadIndex))) || (os_type == os_android && ((!global.joydetected) || global.compatibilitymode)) || (os_type == os_android && global.compatibilitymode))
{
    op[7].visible = false
    global.canedit[7] = 0
}
else
    i++
op[8] = instance_create(x, (y + (sep * i)), oOptionLR)
op[8].label = get_text("OptionsDisplay", "ScanNotifications")
op[8].optionid = 8
i++
op[9] = instance_create(x, (y + (sep * i)), oOptionLR)
op[9].label = get_text("OptionsDisplay", "Language")
op[9].optionid = 9
i++
op[12] = instance_create(x, (y + (sep * i)), oPauseOption)
op[12].optionid = 12
op[12].label = get_text("GlobalOptions", "Exit")
event_user(2)
