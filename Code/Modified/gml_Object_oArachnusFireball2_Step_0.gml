image_angle += 20
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
if fading
{
    if (image_alpha > 0)
        image_alpha -= 0.1
    else
        instance_destroy()
}
if (y > 178)
    y -= 0.5
if (speed < 4)
    speed += 0.01
