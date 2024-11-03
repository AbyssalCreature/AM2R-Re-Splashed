fade = instance_create(x, y, oFXTrail)
fade.sprite_index = sprite_index
fade.fadespeed = 0.1
global.event[1004] = 1
x += 48
