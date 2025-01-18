with (147732)
    instance_destroy()
with (147727)
    instance_destroy()
tile_layer_delete(-102)
oQueen.phase = 2
expl = instance_create(1280, 104, oExplosionSmoke)
expl.width = 64
expl.height = 80
expl.expl_dir = 180
expl.expl_spd = 2
expl.explosions = 10
expl.smoke_steps = 60
expl.density = 3
repeat (20)
{
    deb = instance_create(1280, (104 + random_range(-20, 20)), oDebris)
    deb.alarm[0] = (60 + random(20))
    deb.direction = random_range(150, 210)
    deb.speed = (1 + random(6))
}
sfx_play(sndA4Expl)
screen_shake(30, 6)
instance_create(x, y, oScreenFlash)
