if (open == 1)
{
    if (image_index < (sprite_get_number(sprite_index) - 1))
        image_index += 0.5
}
if (open == 0)
{
    if (image_index > 0)
        image_index -= 0.5
    else if (showlock == 0)
    {
        if (lockdelay > 0)
            lockdelay -= 1
        else
        {
            showlock = 1
            if (lock == 4)
                sfx_play_single(232)
        }
    }
    if highlight
    {
        hltimer += 0.15
        if (hltimer > 99999999)
            hltimer = 0
        hlalpha = abs(sin(hltimer))
        if (hlalpha > 1)
            hlalpha = 1
    }
}
