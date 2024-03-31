var dir, projspeed;
dir = point_direction((x + (12 * facing)), (y - 65), oCharacter.x, (oCharacter.y - 32))
if (phase == 0)
{
    if (statetime < 180)
        alarm[0] = 7
    projspeed = 4.5
}
else if (phase == 1)
{
    if (statetime < 200)
        alarm[0] = 6
    projspeed = 5.2
}
else if (phase > 1)
{
    if (statetime < 230)
        alarm[0] = 5
    projspeed = 6
}
if (global.difficulty >= 2)
    projspeed += 1
if (state == 2)
{
    if facingplayer
    {
        proj = instance_create((x + (12 * facing)), (y - 65), oTorizoFireball)
        proj.direction = dir
        proj.speed = projspeed
        proj.gravity = 0
        if (global.difficulty >= 2)
        {
            proj = instance_create((x + (12 * facing)), (y - 65), oTorizoFireball)
            proj.direction = (dir + 30)
            proj.speed = projspeed
            proj.gravity = 0
            proj = instance_create((x + (12 * facing)), (y - 65), oTorizoFireball)
            proj.direction = (dir - 30)
            proj.speed = projspeed
            proj.gravity = 0
        }
    }
    else
    {
        dir = (90 - (facing * 90))
        proj = instance_create((x + (12 * facing)), (y - 65), oTorizoFireball)
        proj.direction = ((dir - 30) + random(60))
        proj.speed = projspeed
        proj.gravity = 0
        if (global.difficulty >= 2)
        {
            repeat (2)
            {
                proj = instance_create((x + (12 * facing)), (y - 65), oTorizoFireball)
                proj.direction = ((dir - 30) + random(60))
                proj.speed = projspeed
                proj.gravity = 0
            }
        }
    }
}
if (state == 3)
{
    proj = instance_create((x + (12 * facing)), (y - 50), oTorizoEgg)
    proj.hspeed = ((1.5 + random(5)) * facing)
    proj.vspeed = (2 - random(4))
    if (statetime < 230)
        alarm[0] = 7
    if (global.difficulty >= 2)
    {
        proj.hspeed = ((2 + random(9)) * facing)
        proj.vspeed = (4 - random(8))
        if (statetime < 230)
            alarm[0] = 6
    }
}
