image_alpha -= 0.05
if (image_alpha <= 0)
    instance_destroy()
if (speed > 6)
    speed = 6
if (y < (view_yview[0] - 120))
    instance_destroy()
