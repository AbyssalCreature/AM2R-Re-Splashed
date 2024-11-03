shaking = 10
flashing = 5
repeat (2)
    instance_create(center_x, center_y, oDebris)
sfx_play(sndRobotHit4)
if (myhealth <= 0)
{
    event_user(1)
    sfx_play(sndRobotExpl)
}
if (myhealth > 120)
    image_index = 0
if (myhealth <= 120)
    image_index = 1
if (myhealth <= 80)
    image_index = 2
