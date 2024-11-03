if (frozen > 0)
{
    alarm[9] = (30 + random(60))
    spark = instance_create((x + floor((random(16) - 8))), (y + floor((random(16) - 8))), oFXAnimSpark)
    spark.gravity_direction = 270
    spark.gravity = 0.1
    spark.sprite_index = sIBeamFXA
    spark.image_speed = 0.3
    spark.image_index = 0
    spark.depth = -10
}
