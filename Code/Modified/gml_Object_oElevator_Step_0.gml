var canride;
if collision_line((x - 9), (y - 2), (x + 9), (y - 2), oCharacter, false, true)
    canride = 1
else
    canride = 0
if (state == 0 && active && canride && (oCharacter.state == 10 || oCharacter.state == 12) && ((elev_dir == 1 && oControl.kUp) || (elev_dir == 0 && oControl.kDown)))
{
    state = 1
    statetime = 0
    with (oCharacter)
    {
        state = ELEVATOR
        statetime = 0
        canrun = 0
        if (facing == RIGHT)
            sprite_index = sFrontR
        if (facing == LEFT)
            sprite_index = sFrontL
    }
}
if (state == 1)
{
    if (statetime == 20)
        sfx_loop(sndElevatorLoop)
    if (statetime > 20)
    {
        if (y < targety)
            y += 2
        if (y > targety)
            y -= 2
    }
    oCharacter.y = y
    mysolid.y = y
    if (y == targety)
    {
        with (oCharacter)
        {
            state = IDLE
            statetime = 0
        }
        state = 0
        statetime = 0
        active = 0
        alarm[1] = 60
        sfx_stop(sndElevatorLoop)
        event_user(0)
    }
}
statetime += 1
