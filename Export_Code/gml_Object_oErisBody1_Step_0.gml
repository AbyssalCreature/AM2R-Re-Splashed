inrange = (x > 64 && x < 576 && y > 48 && y < 448)
if (state == 0)
    sprite_index = spr_normal
if (state == 1)
{
    sprite_index = spr_frozen
    if (statetime >= 600)
    {
        state = 0
        statetime = 0
        hp = 2
    }
}
if (state == 2)
    sprite_index = spr_open
if (state == 100)
{
    if (statetime < 30)
        speed *= 0.85
    else if (vspeed > -0.2)
        vspeed -= 0.01
}
statetime += 1
if (flashing > 0)
    flashing -= 1
fxtimer += 1
if (fxtimer > 5)
    fxtimer = 0
if (shaking > 0)
{
    xoff = random_range(-4, 4)
    yoff = random_range(-4, 4)
    shaking -= 1
}
else
{
    xoff = 0
    yoff = 0
}
if (oEris.boostphase == 1 || oEris.boostphase == 3 || oEris.boostphase == 5)
{
    if (flashing <= 1)
        flashing = 10
}
