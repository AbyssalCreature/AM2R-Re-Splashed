event_inherited()
if active
    global.bomb = 1
global.event[50] = 1
if (instance_exists(oClient) && oClient.connected)
{
    with (oClient)
        event_user(8)
}
