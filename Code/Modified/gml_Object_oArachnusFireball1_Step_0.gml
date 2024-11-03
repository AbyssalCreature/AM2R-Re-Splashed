image_angle += 30
if (y > 208)
    CollisionBottom = 1
else
    CollisionBottom = 0
if (x < 48)
    CollisionLeft = 1
else
    CollisionLeft = 0
if (x > 272)
    CollisionRight = 1
else
    CollisionRight = 0
if (CollisionRight && hspeed > 0)
    hspeed *= -1
if (CollisionLeft && hspeed < 0)
    hspeed *= -1
if CollisionBottom
{
    instance_create(x, 208, oArachnusFBExpl)
    sfx_play(sndProjHit1)
    instance_destroy()
}
