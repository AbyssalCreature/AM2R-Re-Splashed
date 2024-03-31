var greydoor;
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
if (room == rm_a7b05)
{
    if (instance_number(oMonster) == 0)
        event_user(3)
}
if (room == rm_a7b06)
{
    if (instance_number(oMonster) == 0)
        event_user(3)
}
if (room == rm_a7b06A)
{
    if (instance_number(oMonster) == 0)
        event_user(3)
}
if (room == rm_a7b07)
{
    if (instance_number(oMonster) == 0)
        event_user(3)
}
if (room == rm_a7b08)
{
    if (instance_number(oMonster) == 0)
        event_user(3)
}
if (room == rm_a7b08A)
{
    if (instance_number(oMonster) == 0)
        event_user(3)
}
if (event > -1)
{
    if (event == 151)
    {
        if (global.event[151] >= 3)
        {
            if (lock == 1 || lock == 2 || lock == 3)
            {
                lock = 0
                open = 1
            }
        }
    }
    else if (global.event[event] > 0)
    {
        if (lock == 1 || lock == 2 || lock == 3)
        {
            lock = 0
            open = 1
        }
    }
}
if (global.spectator && instance_exists(oCharacter) && distance_to_object(oCharacter) < 50 && room != rm_a2a03 && id != 114272 && room != rm_a4a06 && room != rm_a4a08 && room != rm_a5b02 && room != rm_a8a13)
{
    greydoor = (global.saxmode && global.sax && lock == 4)
    if ((!open) && (!greydoor))
        open = 1
}
