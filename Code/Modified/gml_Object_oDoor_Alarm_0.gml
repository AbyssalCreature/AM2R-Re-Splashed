if collision_rectangle((x - 8), y, (x + 8), (y + 64), oCharacter, 1, 1)
    event_user(2)
if (event > 0)
{
    if (global.event[event] > 0)
    {
        lock = 0
        stayopen = 0
    }
}
