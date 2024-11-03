action_inherited()
canbeX = 0
myhealth = 8
damage = 16
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0))
{
    freezehp = floor((myhealth * 0.15))
    if (freezehp < 1)
        freezehp = 1
}
hitsound = 78
deathsound = 77
canfreeze = 1
platyoffset = -6
frozenspr = 407
flipx = 0
state = 1
active = 1
hitemp = 1
empspr = 408
