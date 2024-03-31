var sax, playerInBossRoom, i, arrMapIcon, playerRoom;
if (id == 102849 || id == 107772)
{
    if ((room == rm_a0h08 || room == rm_a1h03) && instance_exists(oClient) && oClient.connected && global.sax && global.saxmode)
    {
        if (global.event[51] == 0 && global.log[21] > 0)
        {
            playerInBossRoom = 0
            if (ds_list_size(oClient.posData) > 0)
            {
                for (i = 0; i < ds_list_size(oClient.posData); i++)
                {
                    arrMapIcon = ds_list_find_value(oClient.posData, i)
                    sax = arrMapIcon[3]
                    playerRoom = arrMapIcon[4]
                    if (sax != global.sax && playerRoom == 55)
                        playerInBossRoom = 1
                }
            }
            else
                image_yscale = 0
            if playerInBossRoom
                image_yscale = 5
            else
                image_yscale = 0
        }
        else
            image_yscale = 0
    }
    else
        image_yscale = 0
}
