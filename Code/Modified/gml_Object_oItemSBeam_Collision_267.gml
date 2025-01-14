event_inherited()
if active
{
    global.sbeam = 1
    if (instance_exists(oClient) && oClient.connected)
    {
        popup_text(((get_text("Items", "SpazerBeam") + " ") + get_text("GlobalOptions", "Enabled")))
        with (oClient)
            event_user(8)
    }
}
