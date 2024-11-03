action_inherited()
makeActive()
setCollisionBounds(-4, -4, 4, 0)
facing = 1
noglide = 0
myhealth = 30
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor((myhealth * 0.15))
    if (freezehp < 1)
        freezehp = 1
}
damage = 30
hitsound = 64
deathsound = 59
platyoffset = -8
frozenspr = 451
target = 0
canattack = 1
state = 1
image_speed = 0
image_timer = 1
