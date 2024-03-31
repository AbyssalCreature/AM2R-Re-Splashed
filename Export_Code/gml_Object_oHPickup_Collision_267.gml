global.playerhealth += 5
if (global.playerhealth > global.maxhealth)
    global.playerhealth = global.maxhealth
PlaySoundMono(sndHPickup)
instance_destroy()
