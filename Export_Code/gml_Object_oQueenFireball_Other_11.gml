with (147731)
    instance_destroy()
tile_layer_delete(-101)
oQueen.phase = 1
expl = instance_create(960, 120, oExplosionSmoke)
expl.width = 64
expl.height = 144
expl.expl_dir = 180
expl.expl_spd = 2
expl.explosions = 10
expl.smoke_steps = 60
expl.density = 5
repeat (50)
{
    deb = instance_create(960, (120 + random_range(-64, 64)), oDebris)
    deb.alarm[0] = (60 + random(20))
    deb.direction = random_range(150, 210)
    deb.speed = (1 + random(6))
}
sfx_play(sndA4Expl)
screen_shake(30, 6)
instance_create(x, y, oScreenFlash)
