instance_create(x, (y - 16), oHatchlingIntro)
global.event[304] = 1
p1 = instance_create(x, (y - 16), oMonsterEggPiece)
p1.sprite_index = sMonsterEggPiece1
p1.vspeed = -2
p1.hspeed = -2
p2 = instance_create(x, (y - 16), oMonsterEggPiece)
p2.sprite_index = sMonsterEggPiece2
p2.vspeed = -1.8
p2.hspeed = 2.2
p3 = instance_create(x, (y - 16), oMonsterEggPiece)
p3.sprite_index = sMonsterEggPiece3
p3.vspeed = -0.6
p3.hspeed = -3
p4 = instance_create(x, (y - 16), oMonsterEggPiece)
p4.sprite_index = sMonsterEggPiece3
p4.vspeed = -0.8
p4.hspeed = 2
p4.image_xscale = -1
bld = instance_create(x, (y - 18), oFXAnimSpark)
bld.sprite_index = sMGammaBlood1
bld.image_speed = 0.5
bld.image_alpha = 0.6
bld.image_angle = -45
bld = instance_create((x - 8), (y - 10), oFXAnimSpark)
bld.sprite_index = sMGammaBlood1
bld.image_speed = 0.4
bld.image_alpha = 0.6
bld.image_angle = 45
sfx_play(sndMEggBreak)
sprite_index = sMonsterEggHatch
image_speed = 0.2
alarm[0] = 0
global.monstersleft++
global.monstersarea++
