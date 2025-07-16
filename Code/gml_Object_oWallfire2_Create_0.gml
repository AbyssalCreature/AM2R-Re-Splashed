action_inherited()
canbeX = 0
myhealth = 15
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor(myhealth * 0.15)
    if (freezehp < 1)
        freezehp = 1
}
damage = 4
hitsound = 77
deathsound = 80
platyoffset = -6
frozenspr = 2015
target = 0
canattack = 1
state = 1
image_speed = 0
if (global.difficulty == 0)
    alarm[0] = 90
if (global.difficulty == 1)
    alarm[0] = 60
if (global.difficulty == 2)
    alarm[0] = 60
hitemp = 1
empspr = 2014
freezefall = 0
