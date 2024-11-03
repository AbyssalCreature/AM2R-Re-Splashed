repeat (50)
{
    expl = instance_create((x + random_range(-90, 150)), (y + random_range(-60, 30)), oFXAnimSpark)
    expl.image_speed = (0.5 + random(0.5))
    expl.additive = 0
    expl.sprite_index = sExpl1
    expl.direction = random(360)
    expl.speed = (2 + random(1))
}
make_explosion4(x, y)
make_explosion4((x + 40), (y + 30))
make_explosion4((x + 80), (y + 20))
make_explosion4((x - 30), (y + 10))
make_explosion4((x - 80), (y + 35))
screen_shake(60, 4)
instance_create(x, y, oScreenFlash)
sfx_play(sndMissileExpl)
sfx_play(sndSMissileExpl)
sfx_play(sndMEggBreak)
event_user(10)
instance_destroy()
