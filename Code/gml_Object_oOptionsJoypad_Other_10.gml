y -= 8
sep = 16
i = 0
op[50] = instance_create(x, y, oMenuLabel)
op[50].text = get_text("OptionsControlJoypad", "Title_Joypad")
op[1] = instance_create(x, (y + sep), oOptionSlider)
op[1].label = get_text("OptionsControlJoypad", "Deadzone")
op[1].optionid = 1
tip[1] = get_text("OptionsControlJoypad", "Deadzone_Tip")
op[2] = instance_create(x, (y + (sep * 2)), oOptionLR)
op[2].label = get_text("OptionsControlJoypad", "AnalogWalking")
op[2].optionid = 2
tip[2] = get_text("OptionsControlJoypad", "AnalogWalking_Tip")
op[5] = instance_create(x, (y + (sep * 5)), oOptionLR)
op[5].label = get_text("DPadMenu", "DPadRebind")
op[5].optionid = 5
tip[5] = get_text("DPadMenu", "DPadRebind_Tip")
if (os_type != os_android)
{
    op[3] = instance_create(x, (y + (sep * 3)), oOptionLR)
    op[3].label = get_text("OptionsControlJoypad", "XAxis")
    op[3].optionid = 3
    tip[3] = get_text("OptionsControlJoypad", "XAxis_Tip")
    op[4] = instance_create(x, (y + (sep * 4)), oOptionLR)
    op[4].label = get_text("OptionsControlJoypad", "YAxis")
    op[4].optionid = 4
    tip[4] = get_text("OptionsControlJoypad", "YAxis_Tip")
}
else
{
    op[3] = instance_create(x, (y + (sep * 3)), oOptionLR)
    op[3].label = get_text("Android", "AnalogStick")
    op[3].optionid = 3
    tip[3] = get_text("Android", "AnalogStick_Tip")
    op[4] = instance_create(x, (y + (sep * 4)), oOptionLR)
    op[4].label = get_text("Android", "InvertAxis")
    op[4].optionid = 4
    tip[4] = get_text("Android", "InvertAxis_Tip")
    op[5].visible = false
    canedit[5] = 0
}
i = 7
if (os_type == os_android || os_type == os_linux)
    i--
op[6] = instance_create(x, (y + (sep * i)), oOptionLR)
op[6].label = get_text("OptionsControlCommands", "Up")
op[6].optionid = 6
tip[6] = get_text("OptionsControlJoypad", "Up_Tip")
if (global.dpad_rebind == 0 && os_type != os_android)
{
    op[6].visible = false
    canedit[6] = 0
}
i += 1
op[7] = instance_create(x, (y + (sep * i)), oOptionLR)
op[7].label = get_text("OptionsControlCommands", "Down")
op[7].optionid = 7
tip[7] = get_text("OptionsControlJoypad", "Down_Tip")
if (global.dpad_rebind == 0 && os_type != os_android)
{
    op[7].visible = false
    canedit[7] = 0
}
i += 1
op[8] = instance_create(x, (y + (sep * i)), oOptionLR)
op[8].label = get_text("OptionsControlCommands", "Left")
op[8].optionid = 8
tip[8] = get_text("OptionsControlJoypad", "Left_Tip")
if (global.dpad_rebind == 0 && os_type != os_android)
{
    op[8].visible = false
    canedit[8] = 0
}
i += 1
op[9] = instance_create(x, (y + (sep * i)), oOptionLR)
op[9].label = get_text("OptionsControlCommands", "Right")
op[9].optionid = 9
tip[9] = get_text("OptionsControlJoypad", "Right_Tip")
if (global.dpad_rebind == 0 && os_type != os_android)
{
    op[9].visible = false
    canedit[9] = 0
}
i = 7
if (global.dpad_rebind == 1 || os_type == os_android)
    i += 4
if (os_type == os_android)
    i--
op[10] = instance_create(x, (y + (sep * i)), oOptionLR)
op[10].label = get_text("OptionsControlCommands", "Jump")
op[10].optionid = 10
tip[10] = get_text("OptionsControlJoypad", "Jump_Tip")
i += 1
op[11] = instance_create(x, (y + (sep * i)), oOptionLR)
op[11].label = get_text("OptionsControlCommands", "Fire")
op[11].optionid = 11
tip[11] = get_text("OptionsControlJoypad", "Fire_Tip")
i += 1
op[12] = instance_create(x, (y + (sep * i)), oOptionLR)
if (global.opaimstyle == 0)
{
    op[12].label = get_text("OptionsControlCommands", "DiagonalAim")
    tip[12] = get_text("OptionsControlJoypad", "DiagonalAim_Tip")
}
else
{
    op[12].label = get_text("OptionsControlCommands", "AimUp")
    tip[12] = get_text("OptionsControlJoypad", "AimUp_Tip")
}
op[12].optionid = 12
i += 1
if (global.opaimstyle == 1)
{
    op[13] = instance_create(x, (y + (sep * i)), oOptionLR)
    op[13].label = get_text("OptionsControlCommands", "AimDown")
    op[13].optionid = 13
    tip[13] = get_text("OptionsControlJoypad", "AimDown_Tip")
    i += 1
}
else
{
    op[13] = instance_create(x, (y + (sep * i)), oOptionLR)
    op[13].label = ""
    op[13].optionid = 100
    op[13].visible = false
    tip[13] = ""
}
op[14] = instance_create(x, (y + (sep * i)), oOptionLR)
op[14].label = get_text("OptionsControlCommands", "AimLock")
op[14].optionid = 14
tip[14] = get_text("OptionsControlJoypad", "AimLock_Tip")
i += 1
op[15] = instance_create(x, (y + (sep * i)), oOptionLR)
op[15].label = get_text("OptionsControlCommands", "Morph")
op[15].optionid = 15
tip[15] = get_text("OptionsControlJoypad", "Morph_Tip")
i += 1
op[16] = instance_create(x, (y + (sep * i)), oOptionLR)
if (global.opmslstyle == 0)
{
    op[16].label = get_text("OptionsControlCommands", "ArmWeapon")
    tip[16] = get_text("OptionsControlJoypad", "ArmWeapon_Tip")
}
if (global.opmslstyle == 1)
{
    op[16].label = get_text("OptionsControlCommands", "WeaponSelect")
    tip[16] = get_text("OptionsControlJoypad", "WeaponSelect_Tip")
}
if (global.opmslstyle == 2)
{
    op[16].label = get_text("OptionsControlCommands", "FireMissile")
    tip[16] = get_text("OptionsControlJoypad", "FireMissile_Tip")
}
op[16].optionid = 16
i += 1
op[17] = instance_create(x, (y + (sep * i)), oOptionLR)
if (global.opmslstyle == 0)
{
    op[17].label = get_text("OptionsControlCommands", "WeaponSelect")
    tip[17] = get_text("OptionsControlJoypad", "WeaponSelect_Tip")
}
if (global.opmslstyle == 1)
{
    op[17].label = get_text("OptionsControlCommands", "WeaponCancel")
    tip[17] = get_text("OptionsControlJoypad", "WeaponCancel_Tip")
}
if (global.opmslstyle == 2)
{
    op[17].label = get_text("OptionsControlCommands", "FireSuper")
    tip[17] = get_text("OptionsControlJoypad", "FireSuper_Tip")
}
op[17].optionid = 17
i += 1
op[18] = instance_create(x, (y + (sep * i)), oOptionLR)
op[18].label = get_text("OptionsControlCommands", "Start")
op[18].optionid = 18
tip[18] = get_text("OptionsControlJoypad", "Start_Tip")
i += 1
op[19] = instance_create(x, (y + (sep * i)), oOptionLR)
op[19].label = get_text("OptionsControlCommands", "MenuAccept")
op[19].optionid = 19
tip[19] = get_text("OptionsControlJoypad", "MenuAccept_Tip")
i += 1
op[20] = instance_create(x, (y + (sep * i)), oOptionLR)
op[20].label = get_text("OptionsControlCommands", "MenuBack")
op[20].optionid = 20
tip[20] = get_text("OptionsControlJoypad", "MenuBack_Tip")
i += 1
op[21] = instance_create(x, (y + (sep * i)), oPauseOption)
op[21].optionid = 21
op[21].label = get_text("GlobalOptions", "Defaults")
tip[21] = get_text("GlobalOptions", "Defaults_Tip")
i += 1
op[22] = instance_create(x, (y + (sep * i)), oPauseOption)
op[22].optionid = 22
op[22].label = get_text("GlobalOptions", "Exit")
tip[22] = get_text("GlobalOptions", "ExitMain_Tip")
global.tiptext = tip[global.curropt]
event_user(2)
