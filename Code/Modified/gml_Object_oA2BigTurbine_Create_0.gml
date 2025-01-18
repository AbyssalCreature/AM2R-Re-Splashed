if (global.event[101] > 0)
    instance_destroy()
else
{
    myhealth = 100
    stun = 0
    flashing = 0
    fxtimer = 0
    wall = instance_create((x + 16), y, oSolid1x4)
    hitsound = 76
    deathsound = 80
}
