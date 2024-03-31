if global.item[scr_itemchange(6)]
{
    with (oTorizoStatue)
        event_user(0)
    with (oDoor)
        event_user(0)
    with (115280)
        instance_destroy()
    with (115267)
        instance_destroy()
    with (115268)
        instance_destroy()
    mus_current_fadeout()
    global.event[152] = 1
    instance_destroy()
}
