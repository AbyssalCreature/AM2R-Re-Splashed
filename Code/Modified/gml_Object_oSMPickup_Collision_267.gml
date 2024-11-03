global.smissiles += 1
if (global.smissiles > global.maxsmissiles)
    global.smissiles = global.maxsmissiles
PlaySoundMono(sndSMPickup)
instance_destroy()
