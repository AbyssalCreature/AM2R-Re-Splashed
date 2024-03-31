alarm[0] = (10 + random(10))
spark = instance_create((x + floor(random_range(-16, 16))), (y + floor(random_range(-16, 16))), oFXAnimSpark)
spark.gravity_direction = 270
spark.gravity = 0.1
spark.sprite_index = sIBeamFXA
spark.image_speed = 0.3
spark.image_index = 0
spark.depth = -20
