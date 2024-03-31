var nextSeg;
if ((!tail) && state != 100)
{
    nextSeg = oErisHead.segment[(order - 1)]
    if (init == 0)
    {
        nextSeg.x = (x + lengthdir_x((sprite_width - 2), (image_angle - 180)))
        nextSeg.y = (y + lengthdir_y((sprite_width - 2), (image_angle - 180)))
        init = 1
    }
    nextSeg.image_angle = point_direction(nextSeg.x, nextSeg.y, x, y)
    nextSeg.x = lerp(nextSeg.x, (x + lengthdir_x((nextSeg.sprite_width - (76 / clamp(oErisHead.speed, 1, 16))), (image_angle - 180))), clamp(((oErisHead.speed - 1) * 0.065), 0, 1))
    nextSeg.y = lerp(nextSeg.y, (y + lengthdir_y((nextSeg.sprite_width - (76 / clamp(oErisHead.speed, 1, 16))), (image_angle - 180))), clamp(((oErisHead.speed - 1) * 0.065), 0, 1))
}
if (order == 14 && state != 100)
    image_angle = point_direction(x, y, oErisHead.x, oErisHead.y)
if (state != 100)
    boosting = oErisHead.boosting
inrange = (x > 32 && x < 608 && y > 48 && y < 448)
if (!tail)
{
    if (state == 0)
        sprite_index = spr_normal
    else if (state == 1)
    {
        sprite_index = spr_frozen
        if (statetime >= 600)
        {
            state = 0
            statetime = 0
            hp = 2
        }
    }
    else if (state == 2)
        sprite_index = spr_open
}
if (state == 100)
{
    if (statetime < 30)
        speed *= 0.85
    else if (vspeed > -0.2)
        vspeed -= 0.01
}
if (state == 1 || state == 100)
    statetime += 1
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
if (flashing > 0)
    flashing -= 1
if boosting
{
    if (flashing <= 1)
        flashing = 10
}
