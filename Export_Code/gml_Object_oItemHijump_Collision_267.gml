event_inherited()
if active
    global.hijump = 1
if (instance_exists(oClient) && oClient.connected)
{
    with (oClient)
        event_user(8)
}
