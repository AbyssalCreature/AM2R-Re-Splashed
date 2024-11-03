quake = instance_create(0, 0, oQuake)
quake.delay = 0
quake.duration = 10
quake.intensity = 2
expl = instance_create(x, y, oMissileExpl)
expl.damage = 15
expl.smissile = 1
sfx_stop(sndFlyby)
PlaySoundMono(sndSMissileExpl)
instance_destroy()
