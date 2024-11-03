global.item[9] = 1
global.itemstaken += 1
myposx = floor((x / 320))
myposy = floor(((y - 8) / 240))
mapposx = (myposx + global.mapoffsetx)
mapposy = (myposy + global.mapoffsety)
global.dmap[mapposx, mapposy] = 2
with (oControl)
    event_user(2)
global.itemtype = 0
display_itemmsg(text1, text2, "", "")
instance_destroy()
