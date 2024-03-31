var sprite;
sprite = baby_septogg_sprite(scavenge.x, scavenge.y)
image_index = choose(1, 2, 3)
image_speed = 0.33
if (sprite != -1)
    sprite_index = sprite
else
    instance_destroy()
