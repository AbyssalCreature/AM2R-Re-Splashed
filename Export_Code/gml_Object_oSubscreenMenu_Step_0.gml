if (active && oControl.kDown && oControl.kDownPushedSteps == 0)
{
    global.curropt += 1
    if (global.curropt == 1 && global.inventory[5] == 0)
        global.curropt += 1
    if (global.curropt == 2 && global.inventory[9] == 0)
        global.curropt += 1
    if (global.curropt == 3 && global.inventory[10] == 0)
        global.curropt += 1
    if (global.curropt == 4 && global.inventory[12] == 0)
        global.curropt += 1
    if (global.curropt == 5 && global.inventory[13] == 0)
        global.curropt += 1
    if (global.curropt == 6 && global.inventory[14] == 0)
        global.curropt += 1
    if (global.curropt == 7 && global.inventory[11] == 0)
        global.curropt += 1
    if (global.curropt == 9 && global.inventory[2] == 0)
        global.curropt += 1
    if (global.curropt == 10 && global.inventory[3] == 0)
        global.curropt += 1
    if (global.curropt == 11 && global.inventory[0] == 0)
        global.curropt += 1
    if (global.curropt == 12 && global.inventory[1] == 0)
        global.curropt += 1
    if (global.curropt == 13 && global.inventory[8] == 0)
        global.curropt += 1
    if (global.curropt == 14 && global.inventory[4] == 0)
        global.curropt += 1
    if (global.curropt == 15 && global.inventory[6] == 0)
        global.curropt += 1
    if (global.curropt == 16 && global.inventory[7] == 0)
        global.curropt += 1
    if (global.curropt > 16)
        global.curropt = 0
    sfx_play(sndMenuMove)
}
if (active && oControl.kUp && oControl.kUpPushedSteps == 0)
{
    global.curropt -= 1
    if (global.curropt < 0)
        global.curropt = 16
    if (global.curropt == 16 && global.inventory[7] == 0)
        global.curropt -= 1
    if (global.curropt == 15 && global.inventory[6] == 0)
        global.curropt -= 1
    if (global.curropt == 14 && global.inventory[4] == 0)
        global.curropt -= 1
    if (global.curropt == 13 && global.inventory[8] == 0)
        global.curropt -= 1
    if (global.curropt == 12 && global.inventory[1] == 0)
        global.curropt -= 1
    if (global.curropt == 11 && global.inventory[0] == 0)
        global.curropt -= 1
    if (global.curropt == 10 && global.inventory[3] == 0)
        global.curropt -= 1
    if (global.curropt == 9 && global.inventory[2] == 0)
        global.curropt -= 1
    if (global.curropt == 7 && global.inventory[11] == 0)
        global.curropt -= 1
    if (global.curropt == 6 && global.inventory[14] == 0)
        global.curropt -= 1
    if (global.curropt == 5 && global.inventory[13] == 0)
        global.curropt -= 1
    if (global.curropt == 4 && global.inventory[12] == 0)
        global.curropt -= 1
    if (global.curropt == 3 && global.inventory[10] == 0)
        global.curropt -= 1
    if (global.curropt == 2 && global.inventory[9] == 0)
        global.curropt -= 1
    if (global.curropt == 1 && global.inventory[5] == 0)
        global.curropt -= 1
    sfx_play(sndMenuMove)
}
if (active && oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && global.curropt < 8)
{
    if (global.curropt >= 0 && global.curropt < 3)
        global.curropt = 8
    else
        global.curropt = 14
    if (global.curropt == 14 && global.inventory[4] == 0)
        global.curropt += 1
    if (global.curropt == 15 && global.inventory[6] == 0)
        global.curropt += 1
    if (global.curropt == 16 && global.inventory[7] == 0)
        global.curropt += 1
    if (global.curropt > 16)
        global.curropt = 8
    sfx_play(sndMenuMove)
}
if (active && oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0 && global.curropt >= 8)
{
    if (global.curropt >= 8 && global.curropt < 14)
        global.curropt = 0
    else
        global.curropt = 3
    if (global.curropt == 3 && global.inventory[10] == 0)
        global.curropt += 1
    if (global.curropt == 4 && global.inventory[12] == 0)
        global.curropt += 1
    if (global.curropt == 5 && global.inventory[13] == 0)
        global.curropt += 1
    if (global.curropt == 6 && global.inventory[14] == 0)
        global.curropt += 1
    if (global.curropt == 7 && global.inventory[11] == 0)
        global.curropt += 1
    if (global.curropt > 7)
        global.curropt = 0
    sfx_play(sndMenuMove)
}
if (active && oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
{
    editing = 1
    sfx_play(sndMenuMove)
}
if editing
{
    if (global.curropt == 0)
        global.currentsuit = 0
    if (global.curropt == 1)
        global.currentsuit = 1
    if (global.curropt == 2)
        global.currentsuit = 2
    if (global.curropt == 3)
        global.cbeam = (!global.cbeam)
    if (global.curropt == 4)
        global.wbeam = (!global.wbeam)
    if (global.curropt == 5)
        global.sbeam = (!global.sbeam)
    if (global.curropt == 6)
        global.pbeam = (!global.pbeam)
    if (global.curropt == 7)
        global.ibeam = (!global.ibeam)
    if (global.curropt == 8)
        global.morphball = (!global.morphball)
    if (global.curropt == 9)
        global.spiderball = (!global.spiderball)
    if (global.curropt == 10)
        global.jumpball = (!global.jumpball)
    if (global.curropt == 11)
        global.bomb = (!global.bomb)
    if (global.curropt == 12)
        global.powergrip = (!global.powergrip)
    if (global.curropt == 13)
        global.screwattack = (!global.screwattack)
    if (global.curropt == 14)
        global.hijump = (!global.hijump)
    if (global.curropt == 15)
        global.spacejump = (!global.spacejump)
    if (global.curropt == 16)
        global.speedbooster = (!global.speedbooster)
    editing = 0
}
dtext = tiptext[global.curropt]
if (active && oControl.kStart && oControl.kStartPushedSteps == 0)
{
    fadeout = 1
    active = 0
}
if fadeout
    rectoffset += 2
if (ealpha < 1 && fadeout == 0)
    ealpha += 0.05
if (ealpha > 0 && fadeout)
    ealpha -= 0.05
if (ealpha >= 1 && fadeout == 0 && instance_exists(oSubScrChange) == 0)
    active = 1
if (ealpha <= 0 && fadeout)
{
    global.ingame = 1
    global.transitiontype = 3
    room_goto(global.currentroom)
    Unmute_Loops()
}
if (global.curropt < 14)
    oSubScrPlayer.targety = 52
else
    oSubScrPlayer.targety = -13
