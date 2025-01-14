event_inherited()
if active
{
    global.pbeam = 1
    if (instance_exists(oClient) && oClient.connected)
    {
        popup_text(((get_text("Items", "PlasmaBeam") + " ") + get_text("GlobalOptions", "Enabled")))
        with (oClient)
            event_user(8)
    }
}
