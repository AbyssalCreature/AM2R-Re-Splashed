var canride;
if collision_line((x - 9), (y - 2), (x + 9), (y - 2), oCharacter, false, true)
    canride = 1
else
    canride = 0
if (state == 0 && active && canride && (oCharacter.state == 10 || oCharacter.state == 12) && ((elev_dir == 1 && oControl.kUp) || (elev_dir == 0 && oControl.kDown)))
{
    state = 1
    statetime = 0
    global.savexpos = x
    with (oCharacter)
    {
        state = GFELEVATOR
        statetime = 0
        canrun = 0
    }
    oCharacter.elevator_target_room = target_room
    oCharacter.elevator_target_x = target_x
    oCharacter.elevator_target_y = target_y
}
if (state == 1)
{
    if (statetime == 20)
    {
        sfx_loop(sndElevatorLoop)
        if (elev_dir == 0)
            oCharacter.yVel = 1
        else
            oCharacter.yVel = -1
    }
}
if (image_alpha < 1)
    image_alpha += 0.025
statetime += 1
