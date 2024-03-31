flash = instance_create(x, y, oFXTrail)
flash.sprite_index = sprite_index
flash.image_index = image_index
flash.image_alpha = 1
flash.white = 0
flash.fadespeed = 0.15
flash.depth = 10
flash.image_xscale = facing
flash.image_angle = image_angle
if (state == 5 || dodging)
    alarm[2] = 3
