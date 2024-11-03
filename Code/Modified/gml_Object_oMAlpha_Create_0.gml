canbeX = 0
makeActive()
setCollisionBounds(-15, -9, 15, 9)
hpush = 5
vpush = -3
flashing = 0
flashtime = 0
canbehit = 1
frozen = 0
platform = 0
statetime = 0
turndelay = 0
currentangle = 0
targetangle = 0
rotspeed = 0
targetx = 0
targety = 0
spdelay = 700
turning = 0
dodgedelay = 0
dodgetime = 0
dodging = 0
fxtimer = 0
chasing = 0
hitsound = 131
deathsound = 134
active = 1
target = 0
state = 3
alarm[1] = 120
alarm[3] = 1
image_speed = 0.2
damagedealt = 0
if (global.log[11] == 0)
{
    global.log[11] = 1
    global.newlog[11] = 1
}
scan_log(12, get_text("ScanEvents", "ScanBioform"), 180, 0)
last_one = 0
myposx = floor((x / 320))
myposy = floor(((y - 8) / 240))
mapposx = (myposx + global.mapoffsetx)
mapposy = (myposy + global.mapoffsety)
if (room != rm_a0h14)
    global.dmap[mapposx, mapposy] = 10
else
    global.dmap[43, 24] = 10
with (oControl)
    event_user(2)
