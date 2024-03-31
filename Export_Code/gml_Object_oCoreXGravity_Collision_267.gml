if (!absorb)
{
    PlaySoundMono(sndAbsorbX)
    with (instance_create(oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)), oAbsorbX))
        core = 1
    screwattackpickupfx = oCharacter.fxtimer
    absorb = 1
    statetime = 0
}
