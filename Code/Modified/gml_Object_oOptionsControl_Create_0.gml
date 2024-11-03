global.curropt = 0
lastitem = 10
active = 0
alarm[0] = 5
i = 0
repeat (11)
{
    canedit[i] = 1
    i += 1
}
targety = 0
view_object[0] = id
timer = 0
event_user(0)
with (oSS_Control)
    active = 1
with (oSS_Fg)
    active = 1
tip[0] = get_text("OptionsControl", "AimingStyle_Tip")
tip[1] = get_text("OptionsControl", "MissileStyle_Tip")
tip[2] = get_text("OptionsControl", "ClassicMorphball_Tip")
tip[3] = get_text("OptionsControl", "SpiderballActivation_Tip")
tip[4] = get_text("OptionsControl", "AutoClimb_Tip")
tip[5] = get_text("OptionsControl", "AutoMorph_Tip")
if (os_type != os_android)
    tip[6] = get_text("OptionsControl", "KeyboardSettings_Tip")
else
    tip[6] = get_text("Android", "Haptics_Tip")
tip[7] = get_text("Android", "CompatibilityMode_Tip")
tip[8] = get_text("OptionsControl", "JoypadSettings_Tip")
tip[9] = get_text("Android", "TouchScale_Tip")
tip[10] = get_text("GlobalOptions", "ExitMain_Tip")
if (os_type == os_android)
    canedit[9] = 1
else
{
    canedit[9] = 0
    op[9].enabled = 0
}
global.tiptext = tip[global.curropt]
alarm[1] = 1
inputdel = 0
