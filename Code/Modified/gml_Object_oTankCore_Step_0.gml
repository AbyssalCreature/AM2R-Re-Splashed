if (flashing > 0)
    flashing -= 1
if (global.event[203] != 1 && (!dead))
{
    event_user(1)
    dead = 1
    if (instance_exists(oClient) && oClient.connected)
    {
        with (oClient)
            event_user(8)
    }
}
