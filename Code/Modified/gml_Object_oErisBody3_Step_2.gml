var aft;
if (oEris.stun == 0)
    image_angle = point_direction(xprevious, yprevious, x, y)
if (oEris.boosting && (oEris.fxtimer == 2 || oEris.fxtimer == 5))
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
