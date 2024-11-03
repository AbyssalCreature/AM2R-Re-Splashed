var aft;
if oErisHead.boosting
{
    if (oErisHead.fxtimer == 2 || oErisHead.fxtimer == 5)
    {
        aft = instance_create(x, y, oFXTrail)
        aft.sprite_index = sprite_index
        aft.depth = (depth + 5)
        aft.fadespeed = 0.08
        aft.image_angle = image_angle
        aft.image_xscale = image_xscale
        aft.image_yscale = image_yscale
        aft.additive = 1
    }
    repeat irandom(2)
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
