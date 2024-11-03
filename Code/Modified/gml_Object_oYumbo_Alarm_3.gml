alarm[3] = 5
if (state == 4 && frozen == 0)
{
    spark = instance_create((x + (2 * facing)), (y - 1), oFXTrail)
    spark.sprite_index = sYumboSpark
    spark.additive = 1
    spark.image_alpha = 1
    spark.fadespeed = 0.1
    spark.image_xscale = facing
    spark.depth = -5
    spark.hspeed = (xVel / 2)
    spark.image_speed = 1
}
