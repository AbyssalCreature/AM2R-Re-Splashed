msl = instance_create(argument2, argument3, oMissile)
msl.sax = argument4
msl.myid = argument5
msl.velX = argument6
msl.velY = argument7
msl.icemissiles = argument8
if (argument1 == 2)
    msl.smissile = 1
msl.direction = argument0
msl.speed = 6.4
msl.image_angle = argument0
sfx_play(sndFireMissile)
msl.smissile = argument1 == 2
if (argument1 == 1)
{
    msl.sprite_index = sMissile
    msl.alarm[0] = 1
    msl.damage = 20
}
if (argument1 == 2)
{
    msl.sprite_index = sSMissile
    msl.alarm[0] = 1
    msl.damage = 100
    PlaySoundMono(sndFlyby)
}
if (argument8 && argument1 == 1)
    msl.sprite_index = sIceMissile
with (msl)
{
    trail = instance_create(argument2, argument3, oMissileTrail)
    trail.direction = direction
    trail.smissile = smissile
    trail.fadein_speed = 0.04
    if (argument1 == 2)
    {
        trail.sprite_index = sSMissileTrail1
        trail.fadein_speed = 0.1
    }
}
if (argument1 == 2 && global.smissiles == 0)
    argument1 = 1
if (argument1 == 1 && global.missiles == 0)
    argument1 = 0
