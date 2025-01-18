if (global.missiles > 30)
    numpickups = 10
else
    numpickups = 20
shaking = 10
flashing = 5
repeat (2)
    instance_create(center_x, center_y, oDebris)
if (myhealth <= 0)
{
    event_user(1)
    repeat numpickups
        instance_create((center_x + random_range(-15, 15)), (center_y + random_range(-15, 15)), oMPickup)
    sfx_play(sndRobotExpl)
}
if (myhealth > 150)
    image_index = 0
if (myhealth <= 150)
    image_index = 1
if (myhealth <= 100)
    image_index = 2
if (myhealth <= 50)
    image_index = 3
sfx_stop(sndRobotHit2)
sfx_play(sndRobotHit2)
