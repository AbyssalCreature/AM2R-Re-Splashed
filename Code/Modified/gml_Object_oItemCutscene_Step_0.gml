if (active && global.itemtype == 0 && ((oControl.kStart && oControl.kStartPushedSteps == 0) || (oControl.kJump && oControl.kJumpPushedSteps == 0) || (oControl.kFire && oControl.kFirePushedSteps == 0)))
    event_user(0)
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
}
size = (ealpha * 24)
