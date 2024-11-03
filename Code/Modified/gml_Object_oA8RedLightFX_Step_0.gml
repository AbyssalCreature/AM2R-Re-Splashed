time += 0.05
if (time > 9999999)
    time = 0
image_blend = make_color_rgb((max(sin(time), 0) * 255), 0, 0)
if fadeout
{
    if (sin(time) < 0.1)
        instance_destroy()
}
