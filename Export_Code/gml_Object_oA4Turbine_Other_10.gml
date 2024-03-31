expl = instance_create((x + 24), (y + 24), oExplosionSmoke)
expl.width = 48
expl.height = 48
repeat (10)
{
    deb = instance_create((x + 24), (y + 24), oDebris)
    deb.alarm[0] = (60 + random(20))
}
sfx_play(sndA4Expl)
instance_destroy()
