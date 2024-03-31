if (image_alpha > 0 && fading)
    image_alpha -= 0.1
if (image_alpha <= 0)
    instance_destroy()
image_angle += (20 * rotdir)
