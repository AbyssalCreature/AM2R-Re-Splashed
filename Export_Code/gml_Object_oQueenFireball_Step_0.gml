if (speed < 8)
    speed += 0.5
image_angle -= 20
expl = make_explosion1(random_range((x - 10), (x + 10)), random_range((y - 20), (y + 20)))
expl.depth = 10
expl.speed = 1
if (image_xscale < 1)
    image_xscale += 0.05
if (image_yscale < 1)
    image_yscale += 0.05
vspeed -= 0.01
fx = instance_create(x, y, oFXTrail)
fx.sprite_index = sQueenFireball
fx.image_xscale = image_xscale
fx.image_yscale = image_yscale
fx.additive = 1
fx.fadespeed = 0.1
fx.image_angle = image_angle
fx.depth = 10
