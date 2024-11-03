targetx = oCharacter.x
if (state == 0)
{
    if (point_distance(x, y, targetx, y) < 32)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime == 0)
        sfx_play(sndA4DoorInit)
    if (statetime == 60)
    {
        fl_piston1 = 1
        sfx_play(sndA4DoorLock)
    }
    if (statetime == 90)
    {
        fl_piston2 = 1
        sfx_play(sndA4DoorLock)
    }
    if (statetime == 120)
    {
        fl_piston3 = 1
        sfx_play(sndA4DoorLock)
    }
    if (statetime == 180)
    {
        fl_bolt = 1
        sfx_play(sndA4DoorBolt)
    }
    if (statetime == 210)
        fl_clamp = 1
    if (statetime == 240)
    {
        fl_lock = 1
        sfx_play(sndA4DoorRotor)
    }
    if (statetime == 300)
    {
        fl_door = 1
        fl_lock = 0
    }
    if (statetime == 310 && special && global.event[203] > 0 && global.event[203] < 9)
    {
        with (oA4EscapeControl)
            event_user(0)
    }
    if (fl_piston1 == 1)
    {
        if (pframe1 < 2)
            pframe1 += 0.2
    }
    if (fl_piston2 == 1)
    {
        if (pframe2 < 2)
            pframe2 += 0.2
    }
    if (fl_piston3 == 1)
    {
        if (pframe3 < 2)
            pframe3 += 0.2
    }
    if (fl_bolt == 1)
    {
        if (boff < 8)
            boff += 0.5
    }
    if (fl_clamp == 1)
    {
        if (coff < 16)
            coff += 0.2
    }
    if (fl_lock == 1)
    {
        if (lframe < 4)
            lframe += 0.5
        else
            lframe = 0
    }
    if (fl_door == 1)
    {
        if (yoff < 4)
            yoff += 0.1
        if (yoff >= 4 && yoff < 34)
        {
            if (yoff == 4)
            {
                if instance_exists(mysolid)
                {
                    with (mysolid)
                        instance_destroy()
                }
                sfx_play(sndA4DoorOpen)
            }
            yoff += 2
        }
    }
    if (fl_door == 1 && yoff >= 34)
    {
        if (point_distance(x, y, targetx, y) > 48)
        {
            state = 2
            statetime = 0
        }
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        fl_door = 0
        yoff = 32
    }
    if (statetime == 15)
    {
        fl_piston1 = 0
        fl_piston2 = 0
        fl_piston3 = 0
    }
    if (statetime == 10)
        fl_clamp = 0
    if (statetime == 40)
        fl_bolt = 0
    if (statetime == 60)
    {
        state = 0
        statetime = -1
    }
    if (fl_piston1 == 0)
    {
        if (pframe1 > -1)
            pframe1 -= 0.2
    }
    if (fl_piston2 == 0)
    {
        if (pframe2 > -1)
            pframe2 -= 0.2
    }
    if (fl_piston3 == 0)
    {
        if (pframe3 > -1)
            pframe3 -= 0.2
    }
    if (fl_bolt == 0)
    {
        if (boff > 0)
            boff -= 0.5
    }
    if (fl_clamp == 0)
    {
        if (coff > 0)
            coff -= 0.5
    }
    if (fl_door == 0)
    {
        if (yoff > 0)
            yoff -= 4
        event_user(0)
        if (yoff == 4)
            sfx_play(sndA4DoorClose)
    }
}
statetime += 1
