if (active == 1 && frozen == 0)
{
    poffset = (8 * facing)
    if (facing == 1)
        yoffset = 4
    else
        yoffset = 2
    projectile = instance_create((x + poffset), (y - yoffset), oWallfireProj)
    projectile.hspeed = ((3 + global.difficulty) * facing)
    projectile.image_angle = projectile.direction
    PlaySoundMono(sndFireball)
}
if (global.difficulty == 0)
    alarm[2] = 30
if (global.difficulty == 1)
    alarm[2] = 20
if (global.difficulty == 2)
    alarm[2] = 10
