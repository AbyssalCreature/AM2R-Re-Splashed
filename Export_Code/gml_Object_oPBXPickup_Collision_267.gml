if (collectable == 1 && state != 6)
{
    global.pbombs += 1
    if (global.pbombs > global.maxpbombs)
        global.pbombs = global.maxpbombs
    PlaySoundMono(sndAbsorbX)
    instance_create(oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)), oAbsorbX)
    oAbsorbX.color = 3
    state = 6
    statetime = 0
    relativeX = (x - oCharacter.x)
    relativeY = (y - (oCharacter.y - (oCharacter.sprite_height / 2)))
}
