if (collectable == 1 && state != 6)
{
    global.playerhealth += 5
    if (global.playerhealth > global.maxhealth)
        global.playerhealth = global.maxhealth
    PlaySoundMono(sndAbsorbX)
    instance_create(oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)), oAbsorbX)
    state = 6
    statetime = 0
    relativeX = (x - oCharacter.x)
    relativeY = (y - (oCharacter.y - (oCharacter.sprite_height / 2)))
}
