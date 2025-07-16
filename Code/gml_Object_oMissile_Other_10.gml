expl = instance_create(round(x), round(y), oMissileExpl)
expl.sax = sax
expl.myid = myid
expl.icemissiles = icemissiles
if (smissile == 0)
{
    expl.sprite_index = sMissileExpl
    expl.image_xscale = 0.6
    expl.image_yscale = 0.6
    expl.damage = 5
    expl.smissile = 0
    if (!icemissiles)
        PlaySoundMono(sndMissileExpl)
    light = instance_create(x, y, oFadeLight32)
    light.fadespeed = 0.1
    light.alarm[0] = 10
    if icemissiles
    {
        expl.sprite_index = sTesterIceSpark
        expl.image_xscale = 1
        expl.image_yscale = 1
        expl.image_speed = 0.3
        PlaySoundMono(sndMissileExpl)
        PlaySoundMono(sndIceBeamHit)
    }
}
if smissile
{
    quake = instance_create(0, 0, oQuake)
    quake.delay = 0
    quake.duration = 10
    quake.intensity = 2
    expl.damage = 25
    expl.smissile = 1
    sfx_stop(sndFlyby)
    PlaySoundMono(sndSMissileExpl)
    light = instance_create(x, y, oFadeLight64)
    light.fadespeed = 0.1
    light.alarm[0] = 10
    ctrl_vibrate(0, 0, 20)
}
if inwater
{
    repeat (4 + floor(random(4)))
    {
        bubble = instance_create(x, y, oLBubble)
        if instance_exists(bubble)
        {
            bubble.hspeed = 2 - random(4)
            bubble.vspeed = -0.1 - random(1)
        }
    }
}
trail.speed = speed
trail.alarm[0] = 2
with (flame)
    instance_destroy()
instance_destroy()
