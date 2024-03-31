if ((other.object_index == oMissile || other.object_index == oMissileExpl) && global.icemissiles && (!other.smissile))
{
    if canfreeze
    {
        if ((other.damage > myhealth && (!frozen)) || (ceil((other.damage / 2)) > myhealth && (!frozen)))
        {
            dmg = 0
            myhealth = 1
        }
        else
            dmg = other.damage
        frozen = 240
    }
    else
        dmg = other.damage
}
else
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
