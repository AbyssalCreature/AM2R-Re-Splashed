var aft;
if (order == 15)
    visible = false
if (state != 100 && oEris.stun == 0)
{
    if (order < 14)
        image_angle = point_direction(x, y, oEris.mybody[(order + 1)].x, oEris.mybody[(order + 1)].y)
    else
        image_angle = point_direction(x, y, oEris.x, oEris.y)
}
if (order != 15 && oEris.boosting && (oEris.fxtimer == 2 || oEris.fxtimer == 5))
{
    aft = instance_create(x, y, oFXTrail)
    aft.sprite_index = sprite_index
    aft.image_index = image_index
    aft.depth = (depth + 5)
    aft.fadespeed = 0.08
    aft.image_angle = image_angle
    aft.image_xscale = image_xscale
    aft.image_yscale = image_yscale
    aft.additive = 1
}
if oEris.boosting
{
    repeat floor(random(2))
    {
        bubble = instance_create((x + irandom_range(-5, 5)), (y + irandom_range(-5, 5)), oLBubble)
        if instance_exists(bubble)
        {
            bubble.direction = (point_direction(x, y, xprevious, yprevious) + irandom_range(-35, 35))
            bubble.alarm[0] = (10 + irandom_range(0, 20))
            bubble.speed = 2
            bubble.eris = 1
        }
    }
}
