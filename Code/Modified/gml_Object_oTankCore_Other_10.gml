flashing = 5
with (oTank)
    flashing = 5
with (oTankHead)
    flashing = 5
with (oTankBottom)
    flashing = 5
with (oTankCannon)
    flashing = 5
with (oTankArm)
    flashing = 5
if (myhealth > 90)
    image_index = 0
if (myhealth <= 90)
    sprite_index = sTankCore2
if (myhealth <= 45)
    sprite_index = sTankCore3
if (myhealth <= 0)
    event_user(1)
sfx_stop(sndTesterHit)
sfx_play(sndTesterHit)
