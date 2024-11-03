if (sprite_index == sLogFadeMarker)
    instance_destroy()
if (sprite_index == sLogLoadMarker)
{
    sprite_index = sLogFadeMarker
    image_index = 0
    image_speed = 0.5
    if (lognum != -1 && trooperlognum == -1)
        add_log(lognum)
    else if (lognum == -1 && trooperlognum != -1)
        add_trooper_log(trooperlognum)
}
