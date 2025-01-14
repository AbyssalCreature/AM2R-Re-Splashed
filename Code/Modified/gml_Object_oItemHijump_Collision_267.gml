event_inherited()
if active
{
    global.hijump = 1
    if (instance_exists(oClient) && oClient.connected)
    {
        popup_text(((get_text("Items", "HiJump") + " ") + get_text("GlobalOptions", "Enabled")))
        with (oClient)
            event_user(8)
    }
}
