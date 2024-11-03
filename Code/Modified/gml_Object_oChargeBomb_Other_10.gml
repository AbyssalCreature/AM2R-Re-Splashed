i = 0
if (oControl.kDown == 0 && oControl.kLeft == 0 && oControl.kRight == 0)
{
    repeat (5)
    {
        bmb = instance_create(x, y, oBomb2)
        bmb.speed = (1 + (3 * pwr))
        bmb.gravity = 0.2
        if (i == 0)
        {
            bmb.direction = 90
            bmb.alarm[0] = 90
        }
        if (i == 1)
        {
            bmb.direction = 70
            bmb.alarm[0] = 80
        }
        if (i == 2)
        {
            bmb.direction = 30
            bmb.alarm[0] = 70
        }
        if (i == 3)
        {
            bmb.direction = 110
            bmb.alarm[0] = 80
        }
        if (i == 4)
        {
            bmb.direction = 150
            bmb.alarm[0] = 70
        }
        i += 1
    }
}
if (oControl.kRight > 0)
{
    repeat (5)
    {
        bmb = instance_create(x, y, oBomb2)
        bmb.speed = (2 + (3 * pwr))
        bmb.gravity = 0.2
        if (i == 0)
        {
            bmb.direction = 18
            bmb.alarm[0] = 120
        }
        if (i == 1)
        {
            bmb.direction = 36
            bmb.alarm[0] = 110
        }
        if (i == 2)
        {
            bmb.direction = 54
            bmb.alarm[0] = 100
        }
        if (i == 3)
        {
            bmb.direction = 72
            bmb.alarm[0] = 90
        }
        if (i == 4)
        {
            bmb.direction = 90
            bmb.alarm[0] = 80
        }
        i += 1
    }
}
if (oControl.kLeft > 0)
{
    repeat (5)
    {
        bmb = instance_create(x, y, oBomb2)
        bmb.speed = (2 + (3 * pwr))
        bmb.gravity = 0.2
        if (i == 0)
        {
            bmb.direction = 90
            bmb.alarm[0] = 80
        }
        if (i == 1)
        {
            bmb.direction = 108
            bmb.alarm[0] = 90
        }
        if (i == 2)
        {
            bmb.direction = 126
            bmb.alarm[0] = 100
        }
        if (i == 3)
        {
            bmb.direction = 144
            bmb.alarm[0] = 110
        }
        if (i == 4)
        {
            bmb.direction = 162
            bmb.alarm[0] = 120
        }
        i += 1
    }
}
if oCharacter.collision_bottom
{
    if (oControl.kDown > 0 && oControl.kLeft == 0 && oControl.kRight == 0)
    {
        repeat (5)
        {
            bmb = instance_create(x, (y - 5), oBomb2)
            bmb.direction = 90
            bmb.gravity = 0.2
            if (i == 0)
            {
                bmb.alarm[0] = 15
                bmb.speed = (2 * pwr)
            }
            if (i == 1)
            {
                bmb.alarm[0] = 20
                bmb.speed = (1 + (2 * pwr))
            }
            if (i == 2)
            {
                bmb.alarm[0] = 25
                bmb.speed = (2 + (2 * pwr))
            }
            if (i == 3)
            {
                bmb.alarm[0] = 30
                bmb.speed = (3 + (2 * pwr))
            }
            if (i == 4)
            {
                bmb.alarm[0] = 35
                bmb.speed = (4 + (2 * pwr))
            }
            i += 1
        }
    }
}
if (!oCharacter.collision_bottom)
{
    if (oControl.kDown > 0 && oControl.kLeft == 0 && oControl.kRight == 0)
    {
        instance_create(x, y, oBombExpl)
        instance_create(x, y, oBomb)
        repeat (3)
        {
            bmb = instance_create(x, y, oBomb2)
            bmb.speed = 4
            bmb.gravity = 0.2
            if (i == 0)
            {
                bmb.direction = 90
                bmb.alarm[0] = 12
            }
            if (i == 1)
            {
                bmb.direction = 200
                bmb.alarm[1] = 9
                bmb.alarm[2] = 34
            }
            if (i == 2)
            {
                bmb.direction = 340
                bmb.alarm[1] = 9
                bmb.alarm[2] = 34
            }
            i += 1
        }
    }
}
sfx_stop(sndBombComboStart)
sfx_play(sndBombCombo)
instance_destroy()
