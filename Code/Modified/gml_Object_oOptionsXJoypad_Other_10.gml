y -= 8
sep = 16
i = 0
op[50] = instance_create(x, y, oMenuLabel)
op[50].text = get_text("OptionsControlJoypad", "Title_XBox360Joypad")
op[0] = instance_create(x, (y + sep), oOptionLR)
op[0].label = get_text("OptionsControlJoypad", "Vibration")
op[0].optionid = 0
tip[0] = get_text("OptionsControlJoypad", "Vibration_Tip")
op[1] = instance_create(x, (y + (sep * 2)), oOptionSlider)
op[1].label = get_text("OptionsControlJoypad", "Deadzone")
op[1].optionid = 1
tip[1] = get_text("OptionsControlJoypad", "Deadzone_Tip")
op[2] = instance_create(x, (y + (sep * 3)), oOptionLR)
op[2].label = get_text("OptionsControlJoypad", "AnalogWalking")
op[2].optionid = 2
tip[2] = get_text("OptionsControlJoypad", "AnalogWalking_Tip")
op[3] = instance_create(x, (y + (sep * 4)), oOptionLR)
op[3].label = get_text("OptionsControlCommands", "Jump")
op[3].optionid = 3
tip[3] = get_text("OptionsControlJoypad", "Jump_Tip")
op[4] = instance_create(x, (y + (sep * 5)), oOptionLR)
op[4].label = get_text("OptionsControlCommands", "Fire")
op[4].optionid = 4
tip[4] = get_text("OptionsControlJoypad", "Fire_Tip")
op[5] = instance_create(x, (y + (sep * 6)), oOptionLR)
if (global.opaimstyle == 0)
{
    op[5].label = get_text("OptionsControlCommands", "DiagonalAim")
    tip[5] = get_text("OptionsControlJoypad", "DiagonalAim_Tip")
}
else
{
    op[5].label = get_text("OptionsControlCommands", "AimUp")
    tip[5] = get_text("OptionsControlJoypad", "AimUp_Tip")
}
op[5].optionid = 5
i = 7
if (global.opaimstyle == 1)
{
    op[6] = instance_create(x, (y + (sep * i)), oOptionLR)
    op[6].label = get_text("OptionsControlCommands", "AimDown")
    op[6].optionid = 6
    tip[6] = get_text("OptionsControlJoypad", "AimDown_Tip")
    i += 1
}
else
{
    op[6] = instance_create(x, (y + (sep * i)), oOptionLR)
    op[6].label = ""
    op[6].optionid = 100
    op[6].visible = false
    tip[6] = ""
}
op[7] = instance_create(x, (y + (sep * i)), oOptionLR)
op[7].label = get_text("OptionsControlCommands", "AimLock")
op[7].optionid = 7
tip[7] = get_text("OptionsControlJoypad", "AimLock_Tip")
i += 1
op[8] = instance_create(x, (y + (sep * i)), oOptionLR)
op[8].label = get_text("OptionsControlCommands", "Morph")
op[8].optionid = 8
tip[8] = get_text("OptionsControlJoypad", "Morph_Tip")
i += 1
op[9] = instance_create(x, (y + (sep * i)), oOptionLR)
if (global.opmslstyle == 0)
{
    op[9].label = get_text("OptionsControlCommands", "ArmWeapon")
    tip[9] = get_text("OptionsControlJoypad", "ArmWeapon_Tip")
}
if (global.opmslstyle == 1)
{
    op[9].label = get_text("OptionsControlCommands", "WeaponSelect")
    tip[9] = get_text("OptionsControlJoypad", "WeaponSelect_Tip")
}
if (global.opmslstyle == 2)
{
    op[9].label = get_text("OptionsControlCommands", "FireMissile")
    tip[9] = get_text("OptionsControlJoypad", "FireMissile_Tip")
}
op[9].optionid = 9
i += 1
op[10] = instance_create(x, (y + (sep * i)), oOptionLR)
if (global.opmslstyle == 0)
{
    op[10].label = get_text("OptionsControlCommands", "WeaponSelect")
    tip[10] = get_text("OptionsControlJoypad", "WeaponSelect_Tip")
}
if (global.opmslstyle == 1)
{
    op[10].label = get_text("OptionsControlCommands", "WeaponCancel")
    tip[10] = get_text("OptionsControlJoypad", "WeaponCancel_Tip")
}
if (global.opmslstyle == 2)
{
    op[10].label = get_text("OptionsControlCommands", "FireSuper")
    tip[10] = get_text("OptionsControlJoypad", "FireSuper_Tip")
}
op[10].optionid = 10
i += 1
op[11] = instance_create(x, (y + (sep * i)), oOptionLR)
op[11].label = get_text("OptionsControlCommands", "Start")
op[11].optionid = 11
tip[11] = get_text("OptionsControlJoypad", "Start_Tip")
i += 1
op[12] = instance_create(x, (y + (sep * i)), oOptionLR)
op[12].label = get_text("OptionsControlCommands", "MenuAccept")
op[12].optionid = 12
tip[12] = get_text("OptionsControlJoypad", "MenuAccept_Tip")
i += 1
op[13] = instance_create(x, (y + (sep * i)), oOptionLR)
op[13].label = get_text("OptionsControlCommands", "MenuBack")
op[13].optionid = 13
tip[13] = get_text("OptionsControlJoypad", "MenuBack_Tip")
i += 1
op[14] = instance_create(x, (y + (sep * i)), oPauseOption)
op[14].optionid = 14
op[14].label = get_text("GlobalOptions", "Defaults")
tip[14] = get_text("GlobalOptions", "Defaults_Tip")
i += 1
op[15] = instance_create(x, (y + (sep * i)), oPauseOption)
op[15].optionid = 15
op[15].label = get_text("GlobalOptions", "Exit")
tip[15] = get_text("GlobalOptions", "ExitMain_Tip")
global.tiptext = tip[global.curropt]
event_user(2)
