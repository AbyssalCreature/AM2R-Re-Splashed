rspark = instance_create(x, y, oFXAnimSpark)
rspark.sprite_index = sReflectSpark
rspark.image_speed = 0.5
rspark.depth = -120
rmsl = instance_create(x, y, oRMissile)
if smissile
    rmsl.sprite_index = sSMissile
rmsl.direction = ((direction + 190) - random(20))
if (direction != 90)
{
    rmsl.speed = 2
    rmsl.vspeed = -2
}
sfx_stop(sndDeflect)
sfx_play(sndDeflect)
trail.speed = speed
trail.alarm[0] = 2
with (flame)
    instance_destroy()
light = instance_create(x, y, oFadeLight32)
light.fadespeed = 0.1
light.alarm[0] = 2
instance_destroy()
