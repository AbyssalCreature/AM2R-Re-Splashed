repeat (10)
{
    expl = instance_create((x + random_range(-20, 80)), (y + random_range(-20, 20)), oFXAnimSpark)
    expl.image_speed = (0.5 + random(0.5))
    expl.additive = 0
    expl.sprite_index = sExpl1
    expl.direction = random(360)
    expl.speed = (2 + random(1))
}
make_explosion4(x, y)
sfx_play(sndMissileExpl)
with (jaw1_obj)
    instance_destroy()
with (jaw2_obj)
    instance_destroy()
instance_destroy()
