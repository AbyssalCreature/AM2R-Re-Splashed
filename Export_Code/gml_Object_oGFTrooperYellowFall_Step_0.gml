image_angle += 2
if ((y + 2) > 192 && vspeed > 0)
{
    vspeed = 0
    gravity = 0
    sprite_index = sGFTrooperYellowDead
    y = 192
    sfx_play(sndGFTrooperFall)
}
if (sprite_index == sGFTrooperYellowDead)
{
    hspeed *= 0.75
    image_angle = 0
}
