if (global.ingame && room != rm_transition)
{
    if (temp >= 100)
    {
        if (room == rm_a4b01)
            event_user(0)
    }
    else
        alarm[2] = 30
}
else
    alarm[2] = 1
