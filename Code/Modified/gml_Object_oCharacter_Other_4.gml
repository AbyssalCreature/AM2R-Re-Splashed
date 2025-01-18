if (room != rm_transition)
{
    x = (global.targetx + global.offsetx)
    y = (global.targety + global.offsety)
    if (global.event[304] == 1)
    {
        if ((!instance_exists(oHatchling)) && (!instance_exists(oHatchlingIntro)))
            instance_create(x, (y - 16), oHatchling)
    }
    if (oControl.mod_earlybaby == 1 && global.event[304] == 0 && (!instance_exists(oHatchling)) && room_get_name(room) != "rm_a7c01")
        instance_create(x, (y - 16), oHatchling)
    spawn_random_septogg(1, max(1, floor((room_width / 500)), floor((room_height / 500))), 18)
    alarm[11] = 1
}
xGlow = 0
