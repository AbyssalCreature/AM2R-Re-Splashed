tile_layer_delete(-101)
with (130839)
    instance_destroy()
repeat (10)
    make_explosion1big((48 + random(64)), random(192))
repeat (20)
{
    debr = instance_create(80, (64 + random(100)), oMetalDebrisBig)
    debr.direction = random_range(30, -30)
    debr.speed = (2 + random(3))
    debr.alarm[0] = (60 + random(60))
}
expl = instance_create(80, 120, oExplosionSmoke)
expl.explosions = 10
expl.expl_dir = 0
expl.expl_spd = 3
expl.width = 64
expl.height = 128
make_explosion1big(272, 32)
with (130838)
    y -= 240
global.event[203] = 8
sfx_play(sndA4Expl)
active = 1
