spark = instance_create(x, y, oFXAnimSpark)
spark.sprite_index = sBatterySpark
spark.image_speed = 0.5
spark.additive = 1
spark.image_xscale = choose(1, -1)
spark.image_yscale = choose(1, -1)
spark.image_angle = random(360)
spark.depth = 4
alarm[0] = (20 + random(40))
if (state == 10)
    alarm[0] = 10
