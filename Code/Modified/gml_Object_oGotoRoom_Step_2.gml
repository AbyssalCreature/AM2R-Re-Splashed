var targetwidth;
if (((direction == 0 || direction == 180) && oCharacter.y <= (y + 8) && oCharacter.y > ((y - height) - 8)) || ((direction == 90 || direction == 270) && oCharacter.x >= x && oCharacter.x < (x + height)))
{
    if ((direction == 0 && oCharacter.x > (x - 4) && oCharacter.x < (x + 16)) || (direction == 180 && oCharacter.x < (x + 4) && oCharacter.x > (x - 16)) || (direction == 90 && oCharacter.y < (y + 4) && oCharacter.y > (y - 16)) || (direction == 270 && oCharacter.y > (y - 4) && oCharacter.y < (y + 16)))
    {
        global.targetx = targetx
        global.targety = targety
        global.camstartx = camstartx
        global.camstarty = camstarty
        oCamera.x = global.camstartx
        oCamera.y = global.camstarty
        if (direction == 0 || direction == 180)
        {
            global.offsety = (oCharacter.y - y)
            global.offsetx = 0
        }
        if (direction == 90 || direction == 270)
        {
            global.offsetx = (oCharacter.x - x)
            global.offsety = 0
        }
        global.transitiontype = 1
        global.transitionx = (transitionx + global.offsetx)
        global.transitiony = (transitiony + global.offsety)
        with (oCharacter)
        {
            x -= view_xview[0]
            y -= view_yview[0]
            visible = false
        }
        if global.widescreen_enabled
        {
            oControl.widescreen_space = 106
            switch targetroom
            {
                case 148:
                case 369:
                case 337:
                case 95:
                    targetwidth = 320
                    break
                case 128:
                    if (global.event[152] > 0)
                        targetwidth = ds_map_find_value(oControl.room_width_map, targetroom)
                    else
                        targetwidth = 320
                    break
                default:
                    targetwidth = ds_map_find_value(oControl.room_width_map, targetroom)
                    break
            }

            if (targetwidth > 320)
            {
                if (targetx <= 320)
                    global.transitionx -= ((oControl.widescreen_space / 2) - (max(0, ((oControl.widescreen_space + 320) - targetwidth)) / 2))
                else if (targetx >= (targetwidth - 320))
                    global.transitionx += ((oControl.widescreen_space / 2) - (max(0, ((oControl.widescreen_space + 320) - targetwidth)) / 2))
                else
                {
                    if (camstartx <= (floor((oControl.widescreen_space / 2)) + 160))
                        global.transitionx -= max(0, (floor((oControl.widescreen_space / 2)) - 320))
                    if (camstartx >= abs((floor(((oControl.widescreen_space / 2) + 160)) - targetwidth)))
                        global.transitionx += max(0, (floor((oControl.widescreen_space / 2)) - 320))
                }
            }
        }
        if (global.widescreen_enabled != oControl.widescreen)
            oControl.widescreen_switch = 1
        oControl.mod_previous_room = room
        room_change(targetroom, 1)
        Mute_Loops()
        StopAmbLoops()
    }
}
