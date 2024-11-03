action_inherited()
myhealth = 15
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor((myhealth * 0.15))
    if (freezehp < 1)
        freezehp = 1
}
damage = 12
hitsound = 62
deathsound = 59
platyoffset = -6
frozenspr = 322
flipx = 0
target = 0
canattack = 1
state = 1
