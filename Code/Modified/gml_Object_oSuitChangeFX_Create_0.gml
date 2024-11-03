if (oControl.mod_fusion == 1)
    sprite_index = sSuitChange_fusion
yoffset = 40
alarm[1] = 1
drawenergy = 0
eframe = 1
bg1alpha = 0
bg2alpha = 0
bg3alpha = 0
state = 0
xoffset = (180 + (oControl.widescreen_space / 2))
if (room == rm_a2a07)
{
    x = 160
    y = 208
}
else
{
    x = (global.SuitChangeX + 8)
    y = global.SuitChangeY
}
sfx_stop_loops()
global.enablecontrol = 0
with (oCharacter)
{
    kLeft = 0
    kRight = 0
    kUp = 0
    kDown = 0
    kJump = 0
    kJumpPressed = 0
    kRun = 0
    kAim = 0
    kFire = 0
    kMissile = 0
}
