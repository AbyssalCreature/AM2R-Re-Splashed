alarm[0] = 5
if (global.event[176] == 1)
{
    ele = instance_create(160, 192, oGFElevator)
    ele.image_alpha = 0
    ele.bottom = 1
    ele.active = 0
    ele.alarm[1] = 60
    ele.target_room = 375
    ele.target_x = 2400
    ele.target_y = 1152
    ele.elev_dir = 1
    instance_destroy()
}
