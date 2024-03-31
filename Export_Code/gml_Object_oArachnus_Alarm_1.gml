trail = instance_create(x, (y - 16), oFXTrail)
trail.sprite_index = sArachnusBall
trail.image_alpha = 1
trail.white = 0
trail.fadespeed = 0.15
trail.depth = 10
trail.image_xscale = facing
trail.image_angle = ((-angle) * facing)
if (state == 9 && i == 0)
    alarm[1] = 2
if (state == 4 && vspeed < 0)
    alarm[1] = 2
