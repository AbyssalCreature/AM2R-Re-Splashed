poffset = (12 * facing)
projectile = instance_create((x + poffset), (y - 30), oAutrackProj)
projectile.hspeed = ((3.5 + global.difficulty) * facing)
projectile.image_angle = projectile.direction
PlaySoundMono(sndAutrackFire)
