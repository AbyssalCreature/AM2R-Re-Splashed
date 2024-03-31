myhealth -= other.damage
if (myhealth <= 0)
    event_user(1)
stun = 4
flashing = 5
fxtimer = 0
PlaySoundMono(hitsound)
