if (image_alpha > -1)
    image_alpha -= 0.02
if (image_alpha <= 0)
    image_alpha = 1
if active
{
    if (state == 0 || state == 2)
    {
        oSS_Control.canchange = 1
        if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
        {
            if (state == 0)
            {
                global.mapmarkerx = global.mapposx
                global.mapmarkery = global.mapposy
                global.mapmarker = 1
                marker = instance_create(x, y, oMapMarker)
            }
            marker.editing = 1
            state = 1
            sfx_play(sndMenuMove)
            exit
        }
        depth = -10
    }
    if (state == 1)
    {
        oSS_Control.canchange = 0
        if (oControl.kUp > 0 && keycounter == 1)
        {
            global.mapmarkery -= 1
            if (global.mapmarkery < 3)
                global.mapmarkery = 3
            with (marker)
                event_user(0)
        }
        if (oControl.kDown > 0 && keycounter == 1)
        {
            global.mapmarkery += 1
            if (global.mapmarkery > 59)
                global.mapmarkery = 59
            with (marker)
                event_user(0)
        }
        if (oControl.kLeft > 0 && keycounter == 1)
        {
            global.mapmarkerx -= 1
            if (global.mapmarkerx < 3)
                global.mapmarkerx = 3
            with (marker)
                event_user(0)
        }
        if (oControl.kRight > 0 && keycounter == 1)
        {
            global.mapmarkerx += 1
            if (global.mapmarkerx > 76)
                global.mapmarkerx = 76
            with (marker)
                event_user(0)
        }
        if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
        {
            state = 2
            marker.editing = 0
            with (camera)
                event_user(0)
            sfx_play(sndMenuMove)
            exit
        }
        if (oControl.kMenu2 && oControl.kMenu2PushedSteps == 0)
        {
            state = 0
            global.mapmarker = 0
            with (marker)
                instance_destroy()
            with (camera)
                event_user(0)
            sfx_play(sndMenuMove)
        }
        depth = -5
    }
    if (state == 1 && (oControl.kUp > 0 || oControl.kDown > 0 || oControl.kLeft > 0 || oControl.kRight > 0))
    {
        keycounter += 1
        if (keycounter > 8)
            keycounter = 0
    }
    else
        keycounter = 0
}
