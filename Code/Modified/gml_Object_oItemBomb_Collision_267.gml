event_inherited()
global.event[50] = 1
if active
{
    global.bomb = 1
    if (instance_exists(oClient) && oClient.connected)
    {
        with (oClient)
            event_user(8)
        popup_text(((get_text("Items", "Bombs") + " ") + get_text("GlobalOptions", "Enabled")))
    }
}
