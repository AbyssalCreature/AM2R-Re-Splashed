event_inherited()
with (oCharacter)
    sfx_stop(spinjump_sound)
if active
{
    global.spacejump = 1
    if (instance_exists(oClient) && oClient.connected)
    {
        popup_text(((get_text("Items", "SpaceJump") + " ") + get_text("GlobalOptions", "Enabled")))
        with (oClient)
            event_user(8)
    }
}
