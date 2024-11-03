fadeout = 0
direction = 90
image_speed = 0
image_index = choose(0, 1)
image_alpha = 0.8
if (y < ((global.waterlevel + global.wateroffset) + 6))
    instance_destroy()
alarm[0] = (120 + random(500))
eris = 0
if instance_exists(oLavaSurface)
    sprite_index = sBubbleL
