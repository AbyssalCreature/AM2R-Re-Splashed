stun = stuntime
flashing = 5
fxtimer = 0
PlaySoundMono(hitsound)
if (random(2) < 0.2)
    instance_create(x, y, oDebris)
if (myhealth <= 0)
{
    state = 100
    statetime = 0
}
