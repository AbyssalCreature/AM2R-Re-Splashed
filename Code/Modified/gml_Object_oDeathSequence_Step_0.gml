if (fade < 1)
    fade += 0.05
else if (moveplayer < 30)
{
    x -= ((x - 160) / 10)
    y -= ((y - 128) / 10)
    moveplayer += 1
}
else if (state == 0)
{
    state = 1
    image_index = 0
    image_speed = 0
    if (oControl.mod_fusion == 1)
        sprite_index = sPlayerDeath_fusion
    else
        sprite_index = sPlayerDeath
    with (oControl)
        event_user(4)
}
if (state == 1)
{
    if (image_index < 12)
        image_index += 0.3
    else
    {
        state = 2
        alarm[0] = 120
    }
}
if (state > 0)
{
    if (whitefade < 1)
        whitefade += 0.007
}
