var trail;
trail = instance_create(x, y, oFXTrail)
trail.sprite_index = sMZetaBlur
trail.image_alpha = 1
trail.white = 0
trail.fadespeed = 0.15
trail.depth = 10
trail.image_xscale = facing
if (blur == 1)
    alarm[1] = 2
