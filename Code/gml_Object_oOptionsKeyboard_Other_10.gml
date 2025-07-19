y -= 8
sep = 16
i = 0
op[50] = instance_create(x, y, oMenuLabel)
op[50].text = get_text("OptionsControlKeyboard", "Title_Keyboard")
op[0] = instance_create(x, (y + sep), oOptionLR)
op[0].label = get_text("OptionsControlCommands", "Up")
op[0].optionid = 0
tip[0] = get_text("OptionsControlKeyboard", "Up_Tip")
op[1] = instance_create(x, (y + sep * 2), oOptionLR)
op[1].label = get_text("OptionsControlCommands", "Down")
op[1].optionid = 1
tip[1] = get_text("OptionsControlKeyboard", "Down_Tip")
op[2] = instance_create(x, (y + sep * 3), oOptionLR)
op[2].label = get_text("OptionsControlCommands", "Left")
op[2].optionid = 2
tip[2] = get_text("OptionsControlKeyboard", "Left_Tip")
op[3] = instance_create(x, (y + sep * 4), oOptionLR)
op[3].label = get_text("OptionsControlCommands", "Right")
op[3].optionid = 3
tip[3] = get_text("OptionsControlKeyboard", "Right_Tip")
op[4] = instance_create(x, (y + sep * 5), oOptionLR)
op[4].label = get_text("OptionsControlCommands", "Jump")
op[4].optionid = 4
tip[4] = get_text("OptionsControlKeyboard", "Jump_Tip")
op[5] = instance_create(x, (y + sep * 6), oOptionLR)
op[5].label = get_text("OptionsControlCommands", "Fire")
op[5].optionid = 5
tip[5] = get_text("OptionsControlKeyboard", "Fire_Tip")
op[6] = instance_create(x, (y + sep * 7), oOptionLR)
if (global.opaimstyle == 0)
{
    op[6].label = get_text("OptionsControlCommands", "DiagonalAim")
    tip[6] = get_text("OptionsControlKeyboard", "DiagonalAim_Tip")
}
else
{
    op[6].label = get_text("OptionsControlCommands", "AimUp")
    tip[6] = get_text("OptionsControlKeyboard", "AimUp_Tip")
}
op[6].optionid = 6
i = 8
if (global.opaimstyle == 1)
{
    op[7] = instance_create(x, (y + sep * i), oOptionLR)
    op[7].label = get_text("OptionsControlCommands", "AimDown")
    op[7].optionid = 7
    tip[7] = get_text("OptionsControlKeyboard", "AimDown_Tip")
    i += 1
}
else
{
    op[7] = instance_create(x, (y + sep * i), oOptionLR)
    op[7].label = ""
    op[7].optionid = 100
    op[7].visible = false
    tip[7] = ""
}
op[8] = instance_create(x, (y + sep * i), oOptionLR)
op[8].label = get_text("OptionsControlCommands", "AimLock")
op[8].optionid = 8
tip[8] = get_text("OptionsControlKeyboard", "AimLock_Tip")
i += 1
op[9] = instance_create(x, (y + sep * i), oOptionLR)
op[9].label = get_text("OptionsControlCommands", "Morph")
op[9].optionid = 9
tip[9] = get_text("OptionsControlKeyboard", "Morph_Tip")
i += 1
op[10] = instance_create(x, (y + sep * i), oOptionLR)
if (global.opmslstyle == 0)
{
    op[10].label = get_text("OptionsControlCommands", "ArmWeapon")
    tip[10] = get_text("OptionsControlKeyboard", "ArmWeapon_Tip")
}
if (global.opmslstyle == 1)
{
    op[10].label = get_text("OptionsControlCommands", "WeaponSelect")
    tip[10] = get_text("OptionsControlKeyboard", "WeaponSelect_Tip")
}
if (global.opmslstyle == 2)
{
    op[10].label = get_text("OptionsControlCommands", "FireMissile")
    tip[10] = get_text("OptionsControlKeyboard", "FireMissile_Tip")
}
op[10].optionid = 10
i += 1
op[11] = instance_create(x, (y + sep * i), oOptionLR)
if (global.opmslstyle == 0)
{
    op[11].label = get_text("OptionsControlCommands", "WeaponSelect")
    tip[11] = get_text("OptionsControlKeyboard", "WeaponSelect_Tip")
}
if (global.opmslstyle == 1)
{
    op[11].label = get_text("OptionsControlCommands", "WeaponCancel")
    tip[11] = get_text("OptionsControlKeyboard", "WeaponCancel_Tip")
}
if (global.opmslstyle == 2)
{
    op[11].label = get_text("OptionsControlCommands", "FireSuper")
    tip[11] = get_text("OptionsControlKeyboard", "FireSuper_Tip")
}
op[11].optionid = 11
i += 1
op[12] = instance_create(x, (y + sep * i), oOptionLR)
op[12].label = get_text("OptionsControlCommands", "Start")
op[12].optionid = 12
tip[12] = get_text("OptionsControlKeyboard", "Start_Tip")
i += 1
op[13] = instance_create(x, (y + sep * i), oOptionLR)
op[13].label = get_text("OptionsControlCommands", "MenuAccept")
op[13].optionid = 13
tip[13] = get_text("OptionsControlKeyboard", "MenuAccept_Tip")
i += 1
op[14] = instance_create(x, (y + sep * i), oOptionLR)
op[14].label = get_text("OptionsControlCommands", "MenuBack")
op[14].optionid = 14
tip[14] = get_text("OptionsControlKeyboard", "MenuBack_Tip")
i += 1
op[15] = instance_create(x, (y + sep * i), oPauseOption)
op[15].optionid = 15
op[15].label = get_text("GlobalOptions", "Defaults")
tip[15] = get_text("GlobalOptions", "Defaults_Tip")
i += 1
op[16] = instance_create(x, (y + sep * i), oPauseOption)
op[16].optionid = 16
op[16].label = get_text("GlobalOptions", "Exit")
tip[16] = get_text("GlobalOptions", "ExitMain_Tip")
global.tiptext = tip[global.curropt]
event_user(2)
