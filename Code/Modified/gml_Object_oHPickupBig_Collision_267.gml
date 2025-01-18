global.playerhealth += 20
if (global.playerhealth > global.maxhealth)
    global.playerhealth = global.maxhealth
PlaySoundMono(sndHBigPickup)
instance_destroy()
