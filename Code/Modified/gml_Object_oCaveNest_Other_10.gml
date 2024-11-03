dmg = other.damage
if (global.difficulty == 2)
    dmg = ceil((dmg / 2))
myhealth -= dmg
if (myhealth <= 0)
{
    event_user(1)
    global.kills += 1
}
stun = 4
flashing = 5
fxtimer = 0
PlaySoundMono(sndEHit1)
