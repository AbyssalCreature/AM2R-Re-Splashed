event_inherited()
if active
{
    global.screwattack = 1
    with (oCharacter)
        sfx_stop(spinjump_sound)
    if (instance_exists(oClient) && oClient.connected)
    {
        popup_text(((get_text("Items", "ScrewAttack") + " ") + get_text("GlobalOptions", "Enabled")))
        with (oClient)
            event_user(8)
    }
}
