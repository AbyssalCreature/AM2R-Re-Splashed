visible = true
vspeed = -6
friction = 0.3
with (oMEgg1)
    frame = 5
sfx_play(sndMEggBreak)
repeat (8)
{
    mytrail = instance_create(x, (y - 8), oFXTrail)
    mytrail.sprite_index = sMEggPiece
    mytrail.image_index = floor(random(3))
    mytrail.image_alpha = 1
    mytrail.fadespeed = 0.02
    mytrail.additive = 0
    mytrail.image_xscale = (1 - (random(2) < 1 * 2))
    mytrail.vspeed = (-2 - random(5))
    mytrail.hspeed = (-2 + random(4))
    mytrail.gravity = 0.2
    mytrail.gravity_direction = 270
    mytrail.depth = -15
}
bld = instance_create((x - 10), (y - 12), oFXAnimSpark)
bld.sprite_index = sMGammaBlood1
bld.image_speed = 0.5
bld.image_alpha = 0.6
bld = instance_create((x + 10), (y - 12), oFXAnimSpark)
bld.sprite_index = sMGammaBlood1
bld.image_speed = 0.5
bld.image_alpha = 0.6
bld.image_angle = -60
mus_alpha_monster()
myposx = floor((x / 320))
myposy = floor(((y - 8) / 240))
mapposx = (myposx + global.mapoffsetx)
mapposy = (myposy + global.mapoffsety)
global.dmap[mapposx, mapposy] = 10
with (oControl)
    event_user(2)
