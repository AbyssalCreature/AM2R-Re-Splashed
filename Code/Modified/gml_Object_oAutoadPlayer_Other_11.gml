var Leftkey, Rightkey;
msl = instance_create(x, (y + 4), oAutoadMissile)
Leftkey = 0
Rightkey = 0
if (oControl.kLeft > 0)
    Leftkey = -1
if (oControl.kRight > 0)
    Rightkey = 1
msl.hspeed = (((xVel * 0.25) + Leftkey) + Rightkey)
msl.vspeed = min(-1.5, (yVel * 0.8))
hasmissile = 0
