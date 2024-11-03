if (x < 642)
    event_user(0)
fx = instance_create(x, y, oFXTrail)
fx.sprite_index = sprite_index
fx.image_xscale = image_xscale
fx.image_yscale = image_yscale
fx.additive = 1
fx.fadespeed = 0.15
fx.image_angle = image_angle
fx.depth = 10
