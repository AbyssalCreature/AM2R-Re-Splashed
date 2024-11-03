if (ibeam == 1)
{
    alarm[0] = 3
    if sbeam
        alarm[0] = (7 + random(15))
    spark = instance_create((x + floor((random(4) - 2))), (y + floor((random(4) - 2))), oFXAnimSpark)
    spark.gravity_direction = 270
    spark.gravity = 0.2
    spark.sprite_index = sIBeamFX
    spark.image_speed = 0.3
    spark.image_index = 0
    spark.additive = 1
}
