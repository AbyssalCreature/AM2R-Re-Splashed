action_inherited();
makeActive();
setCollisionBounds(-1, -1, 1, 1);
myhealth = 10;
damage = 6;
hitsound = 65;
deathsound = 59;
platyoffset = -14;
frozenspr = 312;

if (oControl.XVariantsEnabled)
    frozenspr = 2348;

if (oControl.XVariantsEnabled)
{
    sprite_index = sTsumuri_Fusion;
    frozenspr = 2348;
}
else
{
    sprite_index = sTsumuri;
    frozenspr = 312;
}

target = 0;
canattack = 1;
state = 1;
myangle = 0;
update = 1;
sbstate = 0;
sbmove = 0;
angleprevious = 0;
rotationspeed = 0;
falling = 0;
xVel = 0;
yVel = 0;
