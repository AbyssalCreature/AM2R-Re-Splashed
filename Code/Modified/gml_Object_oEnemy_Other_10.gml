dmg = other.damage
if (global.difficulty == 2)
    dmg = ceil((dmg / 2))
if (justfrozen == 0)
    myhealth -= dmg
if (myhealth <= 0 && justfrozen == 0 && state != 100)
{
    state = 100
    statetime = 0
    global.kills += 1
}
stun = stuntime
if (other.ibeam && frozen == 0 && canfreeze && myhealth < freezehp)
    event_user(15)
if canflash
{
    flashing = 5
    fxtimer = 0
}
if frozen
{
    if (myhealth > 0)
        PlaySoundMono(sndFreezeHit)
}
else
    PlaySoundMono(hitsound)
