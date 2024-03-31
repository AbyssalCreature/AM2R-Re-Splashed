if (myid == 20)
{
    if (global.dmap[57, 31] == 10)
        global.dmap[57, 31] = 1
    if (global.dmap[58, 31] == 10)
        global.dmap[58, 31] = 1
    if (global.dmap[59, 31] == 10)
        global.dmap[59, 31] = 1
}
myposx = floor((x / 320))
myposy = floor(((y - 8) / 240))
mapposx = (myposx + global.mapoffsetx)
mapposy = (myposy + global.mapoffsety)
global.dmap[mapposx, mapposy] = 10
with (oControl)
    event_user(2)
