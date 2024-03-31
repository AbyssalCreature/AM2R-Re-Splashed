quake = instance_create(0, 0, oQuake)
quake.delay = 0
quake.duration = 10
quake.intensity = 2
ctrl_vibrate(0.5, 0.5, 10)
sfx_play(sndArachnusStomp)
