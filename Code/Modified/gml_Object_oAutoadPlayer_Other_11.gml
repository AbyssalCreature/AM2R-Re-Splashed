msl = instance_create(x, (y + 4), oAutoadMissile)
msl.hspeed = (((xVel * 0.25) + (oControl.kLeft > 0 * -1)) + (oControl.kRight > 0 * 1))
msl.vspeed = min(-1.5, (yVel * 0.8))
hasmissile = 0
