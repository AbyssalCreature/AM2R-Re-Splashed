state = 1
statetime = 0
sfx_play(sndMOmegaIntro)
roaring = 90
mus_omega_monster()
myposx = floor((x / 320))
myposy = floor(((y - 8) / 240))
mapposx = (myposx + global.mapoffsetx)
mapposy = (myposy + global.mapoffsety)
global.dmap[mapposx, mapposy] = 10
with (oControl)
    event_user(2)
cam = instance_create(x, y, oObjectCamera)
cam.target_obj = id
