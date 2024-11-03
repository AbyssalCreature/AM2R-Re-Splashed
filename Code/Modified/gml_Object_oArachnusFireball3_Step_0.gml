image_angle += 30
if (y > 208)
    CollisionBottom = 1
else
    CollisionBottom = 0
if (x < 32)
    CollisionLeft = 1
else
    CollisionLeft = 0
if (x > 288)
    CollisionRight = 1
else
    CollisionRight = 0
if (CollisionRight && hspeed > 0)
{
    hspeed *= -1
    sfx_play(sndProjHit1)
    make_smoke_explosion(x, y)
}
if (CollisionLeft && hspeed < 0)
{
    hspeed *= -1
    sfx_play(sndProjHit1)
    make_smoke_explosion(x, y)
}
if (CollisionBottom && vspeed > 0)
{
    instance_create(x, 208, oArachnusFBExpl3)
    sfx_play(sndProjHit1)
    vspeed = -4
    hspeed *= 0.95
    hits += 1
    if (hits == 10)
        instance_destroy()
}
