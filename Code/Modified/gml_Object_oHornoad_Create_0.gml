action_inherited()
makeActive()
setCollisionBounds(-4, -12, 4, 0)
image_index = floor(random(5))
myhealth = 10
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor((myhealth * 0.15))
    if (freezehp < 1)
        freezehp = 1
}
damage = 6
hitsound = 61
deathsound = 59
platyoffset = -14
frozenspr = 305
canattack = 1
jumpheight = -2
state = 1
alarm[0] = (60 + random(120))
alarm[1] = (90 + random(200))
alarm[2] = (200 + random(200))
