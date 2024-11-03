state = 1
if (image_alpha > 0)
    image_alpha -= 0.03
else
{
    state = 2
    alarm[1] = 1
}
if (state == 1)
    alarm[0] = 1
