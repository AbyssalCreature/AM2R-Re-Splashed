action_inherited()
makeActive()
setCollisionBounds(-16, -8, 16, 8)
myhealth = 30
damage = 16
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor((myhealth * 0.15))
    if (freezehp < 1)
        freezehp = 1
}
hitsound = 79
deathsound = 77
canfreeze = 1
hitmissileexpl = 0
platyoffset = -3
frozenspr = 405
target = 0
canattack = 1
flipx = 0
state = 1
alarm[0] = (60 + random(60))
image_speed = 0.5
hitemp = 1
empspr = 408
