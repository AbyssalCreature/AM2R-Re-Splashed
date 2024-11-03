if (collectable == 1 && state != 6)
{
    global.missiles += 2
    if (global.missiles > global.maxmissiles)
        global.missiles = global.maxmissiles
    PlaySoundMono(sndAbsorbX)
    instance_create(oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)), oAbsorbX)
    oAbsorbX.color = 2
    state = 6
    statetime = 0
    relativeX = (x - oCharacter.x)
    relativeY = (y - (oCharacter.y - (oCharacter.sprite_height / 2)))
}
