with (other.id)
{
    event_user(0)
    instance_destroy()
}
if (active == 0 && canbeshot)
{
    active = 1
    sprite_index = sClawOrb1
    image_speed = 0.5
    alarm[0] = duration
    canbeshot = 0
    sfx_play(sndClawPuzzle1)
}
