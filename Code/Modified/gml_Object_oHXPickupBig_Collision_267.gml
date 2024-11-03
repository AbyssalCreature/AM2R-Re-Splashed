if (collectable == 1 && state != 6)
{
    global.playerhealth += 20
    if (global.playerhealth > global.maxhealth)
        global.playerhealth = global.maxhealth
    PlaySoundMono(sndAbsorbX)
    with (instance_create(oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)), oAbsorbX))
        big = 1
    oAbsorbX.color = 1
    state = 6
    statetime = 0
    relativeX = (x - oCharacter.x)
    relativeY = (y - (oCharacter.y - (oCharacter.sprite_height / 2)))
}
