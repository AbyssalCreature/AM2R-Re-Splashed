var findHatchlingID, h, arrList, arrID, arrX, arrY;
if (myid == 0 && instance_exists(oClient) && string_lower(oClient.name) == "shirty")
{
    if (sprite_index != sFedtogg)
        sprite_index = sFedtogg
    image_speed = 0.33
}
if (myid != 0 && string_lower(name) == "shirty")
{
    if (sprite_index != sFedtogg)
        sprite_index = sFedtogg
    image_speed = 0.33
}
if (myid == 0)
{
    if (global.event[304] == 1 && distance_to_object(oA7Crystal1) < 120)
    {
        tgtobj = instance_nearest(x, y, oA7Crystal1)
        if (tgtobj != noone)
        {
            targetx = (tgtobj.x + 8)
            targety = (tgtobj.y + 8)
            accel = 0.4
            maxspeed = 3.2
            if (mealtimer > 600)
                accel *= 2
        }
        followplayer = 0
    }
    else if (distance_to_object(oXPickup) < 150)
    {
        if (chaseX == 1)
        {
            tgtobj = instance_nearest(x, y, oXPickup)
            if (tgtobj != noone)
            {
                targetx = tgtobj.x
                targety = (tgtobj.y - 11)
                accel = 0.4
                maxspeed = 3.2
                if (mealtimer > 600)
                    accel *= 2
            }
            followplayer = 0
        }
        else if (alarm1set == 0)
        {
            alarm1set = 1
            alarm[1] = 45
        }
    }
    else
    {
        followplayer = 1
        chaseX = 0
        alarm1set = 0
    }
}
else if instance_exists(oClient)
{
    if (ds_list_size(global.hatchlingList) > 0)
    {
        findHatchlingID = ds_list_find_index(global.hatchlingList, myid)
        if (findHatchlingID == -1)
            instance_destroy()
    }
    else
        instance_destroy()
}
else
    instance_destroy()
if (followplayer && myid == 0)
{
    targetx = oCharacter.x
    targety = (oCharacter.y - 30)
    if (distance_to_point(oCharacter.x, (oCharacter.y - 16)) > 128)
    {
        accel = 0.8
        maxspeed = 8
    }
    if (distance_to_point(oCharacter.x, (oCharacter.y - 16)) > 64)
    {
        accel = 0.6
        maxspeed = 6
    }
    else if (distance_to_point(oCharacter.x, (oCharacter.y - 16)) > 32)
    {
        accel = 0.4
        maxspeed = 4
    }
    else
    {
        accel = 0.3
        maxspeed = 2.5
    }
}
else if (followplayer && myid != 0)
{
    if instance_exists(oClient)
    {
        if (ds_list_size(global.hatchlingList) > 0)
        {
            findHatchlingID = ds_list_find_index(global.hatchlingList, myid)
            if (findHatchlingID >= 0)
            {
                if (ds_list_size(oClient.roomListData) > 0 && (!global.saxmode))
                {
                    for (h = 0; h < ds_list_size(oClient.roomListData); h++)
                    {
                        arrList = ds_list_find_value(oClient.roomListData, h)
                        arrID = arrList[0]
                        arrX = arrList[1]
                        arrY = arrList[2]
                        if (arrID == myid)
                        {
                            targetx = arrX
                            targety = (arrY - 30)
                            if (distance_to_point(arrX, (arrY - 16)) > 128)
                            {
                                accel = 0.8
                                maxspeed = 8
                            }
                            if (distance_to_point(arrX, (arrY - 16)) > 64)
                            {
                                accel = 0.6
                                maxspeed = 6
                            }
                            else if (distance_to_point(arrX, (arrY - 16)) > 32)
                            {
                                accel = 0.4
                                maxspeed = 4
                            }
                            else
                            {
                                accel = 0.3
                                maxspeed = 2.5
                            }
                        }
                    }
                }
                else
                    instance_destroy()
            }
        }
    }
}
if (roaring > 0)
{
    roaring -= 1
    image_speed = 1
}
else if (image_speed > 0.25)
    image_speed -= 0.1
if (flash > 0)
    flash -= 0.1
gravity_direction = point_direction(x, y, targetx, targety)
gravity = accel
if (speed > 4)
    speed = maxspeed
mealtimer += 1
