event_inherited()
with (oCharacter)
    sfx_stop(spinjump_sound)
if active
    global.spacejump = 1
if (instance_exists(oClient) && oClient.connected)
{
    with (oClient)
        event_user(8)
}
