action_inherited()
makeActive()
setCollisionBounds(-8, -4, 8, 12)
myhealth = 60
damage = 35
hitsound = 61
deathsound = 60
platyoffset = -4
frozenspr = 1464
target = 0
canattack = 1
flipx = 1
state = 0
facing = 1
stuntime = 5
alarm[0] = (30 + random(60))
accelx = 0.1
accely = 0.05
maxspx = 3
maxspy = 2
targetx = x
targety = y
startx = x
starty = y
currtgt = 0
for (i = 0; i < 10; i += 1)
{
    tgtx[i] = x
    tgty[i] = y
}
tgtx[1] = (startx + 32)
tgty[1] = (starty + 32)
tgtx[2] = (startx + 64)
tgty[2] = starty
tgtx[3] = (startx + 32)
tgty[3] = starty
tgtx[4] = startx
tgty[4] = starty
