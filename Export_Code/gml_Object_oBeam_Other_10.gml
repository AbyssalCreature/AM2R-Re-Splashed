if (pbeam && (!chargebeam))
{
    dohit = 0
    alarm[2] = 2
}
expl = instance_create(x, y, oFXAnimSparkItem)
expl.additive = 0
expl.depth = -1000
if (chargebeam == 0)
    expl.sprite_index = sBeamExpl
if (chargebeam == 1)
    expl.sprite_index = sBeamExpl2
if wbeam
    expl.sprite_index = sWBeamExpl
if pbeam
    expl.sprite_index = sPBeamExpl
if ibeam
    expl.sprite_index = sIBeamExpl
if (ibeam == 1)
{
    expl.sprite_index = sIBeamExpl
    repeat (3)
    {
        expl2 = instance_create(x, y, oFXAnimSparkItem)
        expl2.sprite_index = sIBeamFX
        expl2.vspeed = (-random(3))
        expl2.hspeed = (random(6) - 3)
        expl2.gravity_direction = 270
        expl2.gravity = 0.2
        expl2.image_speed = 0.3
        expl2.additive = 1
        expl2.depth = -1000
    }
}
light = instance_create(x, y, oFadeLight32)
light.fadespeed = 0.1
light.alarm[0] = 5
