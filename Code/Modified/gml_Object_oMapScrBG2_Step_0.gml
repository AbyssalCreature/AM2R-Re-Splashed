if (active && oControl.kStart && oControl.kStartPushedSteps == 0)
{
    fadeout = 1
    active = 0
    instance_create(0, 0, oMapScrBG3)
}
if fadeout
    rectoffset += 2
if (ealpha < 1 && fadeout == 0)
    ealpha += 0.05
if (ealpha > 0 && fadeout)
    ealpha -= 0.05
if (ealpha >= 1 && fadeout == 0)
    active = 1
if (ealpha <= 0 && fadeout)
{
    global.ingame = 1
    global.transitiontype = 3
    room_goto(global.currentroom)
    Unmute_Loops()
}
