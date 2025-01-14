var f, arrPos, arrPosRoom;
if instance_exists(oCharacter)
{
    oCharacter.x = -100
    oCharacter.y = -100
}
if (global.widescreen_enabled != oControl.widescreen && oControl.widescreen_switch == 1)
{
    with (oControl)
    {
        widescreen = global.widescreen_enabled
        if widescreen
            widescreen_space = 106
        if (global.opfullscreen == 0)
        {
            set_window_scale((window_get_height() / 240))
            window_set_position((window_get_x() + ((53 - (global.widescreen_enabled * 106)) * (window_get_height() / 240))), window_get_y())
        }
    }
    oControl.widescreen_switch = 0
}
if ((!instance_exists(oClient)) && global.targetroom == rm_transition)
    global.targetroom = global.lastroom
if (instance_exists(oClient) && ds_list_size(oClient.posData) == 0 && global.targetroom == rm_transition)
    global.targetroom = global.lastroom
if (global.spectatorIndex != -1 && global.targetroom == rm_transition)
{
    if instance_exists(oClient)
    {
        if (ds_list_size(oClient.posData) > 0)
        {
            for (f = 0; f < ds_list_size(oClient.posData); f++)
            {
                arrPos = ds_list_find_value(oClient.posData, f)
                arrPosRoom = arrPos[4]
                if (f == global.spectatorIndex)
                    global.targetroom = arrPosRoom
            }
        }
    }
}
if (global.targetroom != rm_transition)
    room_goto(global.targetroom)
