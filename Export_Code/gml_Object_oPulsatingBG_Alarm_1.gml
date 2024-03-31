state = 2
if (image_alpha < 1)
    image_alpha += 0.1
else
{
    state = 0
    alarm[0] = 120
}
if (state == 2)
    alarm[1] = 1
