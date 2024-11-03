global.event[event] = 1
repeat (80)
    instance_create(((x - 16) + random(32)), (y - random(64)), oGreenCrystalShard)
sfx_play(sndCrystalShatter)
instance_destroy()
