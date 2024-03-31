if (itemid < 0)
    exit
if global.item[itemid]
{
    myposx = floor((x / 320))
    myposy = floor(((y - 8) / 240))
    mapposx = (myposx + global.mapoffsetx)
    mapposy = (myposy + global.mapoffsety)
    if (distance_to_object(oItem) > 180)
        global.dmap[mapposx, mapposy] = 2
    instance_destroy()
}
