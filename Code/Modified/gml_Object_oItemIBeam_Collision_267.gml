if (!global.saxmode)
{
    event_inherited()
    if active
    {
        global.ibeam = 1
        if (instance_exists(oClient) && oClient.connected)
        {
            popup_text(((get_text("Items", "IceBeam") + " ") + get_text("GlobalOptions", "Enabled")))
            with (oClient)
                event_user(8)
        }
    }
}
