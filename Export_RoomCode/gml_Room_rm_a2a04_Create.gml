var inst;
global.mapoffsetx = 34
global.mapoffsety = 18
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 3
mus_change_itemroom()
if (global.event[103] > 0 && global.item[scr_itemchange(3)] == 0)
{
    if (oControl.mod_fusion == 1)
    {
        inst = instance_create((room_width / 2), (room_height / 2), oCoreX)
        inst.alarm[1] = -1
        inst.state = 1
        inst.statetime = 0
    }
    else
        instance_create(global.event[103], 192, scr_itemsopen(oControl.mod_jumpball))
}
if (global.event[103] > 0)
{
    if instance_exists(110450)
    {
        with (110450)
            instance_destroy()
    }
    if instance_exists(110449)
    {
        with (110449)
            instance_destroy()
    }
    if instance_exists(110451)
    {
        with (110451)
            instance_destroy()
    }
}
