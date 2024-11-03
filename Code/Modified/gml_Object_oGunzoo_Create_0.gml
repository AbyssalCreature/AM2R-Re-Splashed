event_inherited()
canbeX = 0
makeActive()
setCollisionBounds(-14, -14, 14, 14)
facing = 1
myhealth = 240
freezehp = 120
prevhealth = myhealth
damage = 32
hpush = 6
vpush = -3
hitmissileexpl = 0
hitsound = 79
deathsound = 80
canfreeze = 1
platyoffset = -6
frozenspr = 334
flipx = 0
target = 0
canattack = 1
state = 1
targetx = x
targety = y
haccel = 0.2
vaccel = 0.9
aoffset = 0
phase = 0
turning = 0
prefiretime = 40
if (global.difficulty == 0)
    prefiretime = 70
if (global.difficulty >= 2)
    prefiretime = 20
hitemp = 1
empspr = 335
