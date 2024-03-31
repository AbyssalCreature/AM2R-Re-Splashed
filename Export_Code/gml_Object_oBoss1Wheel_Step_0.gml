if (!instance_exists(oBoss1Head))
    return 0;
image_speed = (-((oBoss1Head.hspeed / 4)))
if (image_index > 4)
    image_index -= 4
if (image_index < 0)
    image_index += 4
