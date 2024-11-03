global.missiles += 2
if (global.missiles > global.maxmissiles)
    global.missiles = global.maxmissiles
PlaySoundMono(sndMPickup)
instance_destroy()
