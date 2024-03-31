var findID, i, arrDraw, arrID, arrX, arrY, arrSprite, arrState, arrSpeedboost;
if (myid != 0)
{
    if instance_exists(oClient)
    {
        findID = ds_list_find_index(global.speedList, myid)
        if (findID >= 0)
        {
            if (ds_list_size(oClient.roomListData) > 0)
            {
                if (ds_list_find_index(oClient.roomList, myid) < 0)
                {
                    ds_list_delete(global.speedList, findID)
                    instance_destroy()
                }
                for (i = 0; i < ds_list_size(oClient.roomListData); i++)
                {
                    arrDraw = ds_list_find_value(oClient.roomListData, i)
                    arrID = arrDraw[0]
                    arrX = arrDraw[1]
                    arrY = arrDraw[2]
                    arrSprite = arrDraw[3]
                    mirror = arrDraw[12]
                    arrState = arrDraw[19]
                    arrSpeedboost = arrDraw[21]
                    sjball = arrDraw[22]
                    sjdir = arrDraw[23]
                    if (arrID == myid)
                    {
                        x = arrX
                        y = arrY
                        if (mirror == 1)
                        {
                            if (arrState == 29)
                            {
                                if (sjball == 0)
                                    image_yscale = 1
                                if (sjball == 1)
                                    image_yscale = 0.4
                            }
                            if (arrState == 30)
                            {
                                if (sjball == 1)
                                {
                                    image_xscale = 1
                                    image_yscale = 0.5
                                }
                            }
                            if (arrState == 15)
                            {
                                image_xscale = 1.8
                                image_yscale = 0.2
                            }
                            if (arrState == 24)
                            {
                                image_yscale = 0.4
                                image_xscale = 2
                            }
                        }
                        if (mirror == -1)
                        {
                            if (arrState == 29)
                            {
                                if (sjball == 0)
                                    image_yscale = 1
                                if (sjball == 1)
                                    image_yscale = 0.4
                            }
                            if (arrState == 30)
                            {
                                if (sjball == 1)
                                {
                                    image_xscale = 1
                                    image_yscale = 0.5
                                }
                            }
                            if (arrState == 15)
                            {
                                image_xscale = 1.8
                                image_yscale = 0.2
                            }
                            if (arrState == 24)
                            {
                                image_yscale = 0.4
                                image_xscale = 2
                            }
                        }
                        if (arrSpeedboost > 0 && (fxtimer == 0 || fxtimer == 2 || fxtimer == 4))
                        {
                            myspark = instance_create(x, (y - random(36)), oSBSparkMulti)
                            myspark.myid = myid
                        }
                        with (oSBSparkMulti)
                        {
                            if (myid == other.myid)
                            {
                                if follow
                                {
                                    if (other.mirror > 0)
                                        x = (other.x + xoffset)
                                    else
                                    {
                                        x = (other.x - xoffset)
                                        image_xscale = -1
                                    }
                                }
                            }
                        }
                        if (arrState == SUPERJUMP && fxtimer == 0 && sjball == 0)
                        {
                            if (sjdir == 0)
                            {
                                myspark = instance_create(x, (y - 32), oFXAnimSpark)
                                myspark.image_angle = 90
                                myspark.additive = 1
                            }
                            if (sjdir == 1)
                                myspark = instance_create((x + 12), (y - 12), oFXAnimSpark)
                            if (sjdir == 3)
                            {
                                myspark = instance_create((x + 12), (y - 16), oFXAnimSpark)
                                myspark.image_angle = 20
                            }
                            if (sjdir == 2)
                                myspark = instance_create((x - 12), (y - 12), oFXAnimSpark)
                            if (sjdir == 4)
                            {
                                myspark = instance_create((x - 12), (y - 16), oFXAnimSpark)
                                myspark.image_angle = 340
                            }
                            myspark.image_speed = 1
                            myspark.additive = 1
                            if (mirror == -1 && sjdir != 0)
                                myspark.image_xscale = -1
                        }
                        if (arrState == SUPERJUMP && fxtimer == 0 && sjball == 1)
                        {
                            if (sjdir == 0)
                            {
                                myspark = instance_create(x, (y - 15), oFXAnimSpark)
                                myspark.image_angle = 90
                                myspark.additive = 1
                            }
                            if (sjdir == 1)
                                myspark = instance_create((x + 10), (y - 6), oFXAnimSpark)
                            if (sjdir == 3)
                            {
                                myspark = instance_create((x + 10), (y - 8), oFXAnimSpark)
                                myspark.image_angle = 20
                            }
                            if (sjdir == 2)
                                myspark = instance_create((x - 10), (y - 6), oFXAnimSpark)
                            if (sjdir == 4)
                            {
                                myspark = instance_create((x - 10), (y - 8), oFXAnimSpark)
                                myspark.image_angle = 340
                            }
                            myspark.image_speed = 1
                            myspark.additive = 1
                            if (mirror == -1 && sjdir != 0)
                                myspark.image_xscale = -1
                        }
                    }
                }
            }
        }
        else
            instance_destroy()
    }
    else
        instance_destroy()
}
fxtimer++
if (fxtimer > 4)
    fxtimer = 0
