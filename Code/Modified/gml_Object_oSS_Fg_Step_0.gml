if fadein
{
    if (rectoffset > 0)
        rectoffset -= 2
    else
        fadein = 0
}
if (active && (!fadein) && oControl.kStart && oControl.kStartPushedSteps == 0)
    event_user(0)
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
    save_gameoptions()
}
if (oControl.kMissile && oControl.kSelectPushedSteps == 0 && (!missilepressed))
{
    missilepressed = 1
    if (oControl.mod_collecteditemsmap == 0)
        oControl.mod_collecteditemsmap = 1
    else
        oControl.mod_collecteditemsmap = 0
}
if (missilepressed && (!oControl.kMissile))
    missilepressed = 0
