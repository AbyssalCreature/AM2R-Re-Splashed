event_inherited()
if active
{
    global.speedbooster = 1
    if (instance_exists(oClient) && oClient.connected)
    {
        popup_text(((get_text("Items", "SpeedBooster") + " ") + get_text("GlobalOptions", "Enabled")))
        with (oClient)
            event_user(8)
    }
}
