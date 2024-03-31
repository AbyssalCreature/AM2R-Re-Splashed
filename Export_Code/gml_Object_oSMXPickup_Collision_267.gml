if (collectable == 1 && state != 6)
{
    global.smissiles += 1
    if (global.smissiles > global.maxsmissiles)
        global.smissiles = global.maxsmissiles
    PlaySoundMono(sndAbsorbX)
    instance_create(oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)), oAbsorbX)
    oAbsorbX.color = 4
    state = 6
    statetime = 0
    relativeX = (x - oCharacter.x)
    relativeY = (y - (oCharacter.y - (oCharacter.sprite_height / 2)))
}
