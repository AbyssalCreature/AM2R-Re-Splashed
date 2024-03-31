event_inherited()
if active
    global.spiderball = 1
if (instance_exists(oClient) && oClient.connected)
{
    with (oClient)
        event_user(8)
}
