event_inherited()
if active
    global.screwattack = 1
with (oCharacter)
    sfx_stop(spinjump_sound)
if (instance_exists(oClient) && oClient.connected)
{
    with (oClient)
        event_user(8)
}
