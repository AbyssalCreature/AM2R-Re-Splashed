proj = instance_create((x + (8 * facing)), (y - 7), oGunzooProj1)
proj.hspeed = (8 * facing)
proj.image_xscale = facing
sfx_play(sndAutrackFire)
if (state == 2)
    alarm[0] = 7
