if ((state == 2 && statetime < 250) || state == 7)
{
    proj = instance_create((x + (20 * facing)), (y - 70), oTorizoFireball)
    proj.hspeed = ((2 + random(4)) * facing)
    proj.vspeed = (-random(2))
    alarm[0] = 10
    if (global.difficulty >= 2)
    {
        proj.hspeed = ((2 + random(7)) * facing)
        proj.vspeed = (-random(2))
        alarm[0] = 8
    }
    sfx_play(sndFireball)
}
if (state == 4 && y < 430)
{
    proj = instance_create((x + (20 * facing)), (y - 73), oTorizoFireball)
    proj.hspeed = ((4 + random(1)) * facing)
    proj.vspeed = -2
    alarm[0] = 8
    if (global.difficulty >= 2)
    {
        alarm[0] = 6
        proj.vspeed = 0
    }
    sfx_play(sndFireball)
}
if (state == 10)
{
    if facingplayer
    {
        proj = instance_create((x + (12 * facing)), (y - 70), oTorizoFireball)
        proj.direction = point_direction((x + (12 * facing)), (y - 65), oCharacter.x, (oCharacter.y - 8))
        proj.speed = 8
        if (global.difficulty >= 2)
            proj.speed = 9
        sfx_play(sndFireball)
    }
    if (statetime < 120)
        alarm[0] = 6
}
