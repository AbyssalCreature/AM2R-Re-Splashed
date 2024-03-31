shine_frame += 1
if (shine_frame > 7)
{
    shine_frame = 0
    alarm[0] = random_range(200, 500)
}
else
    alarm[0] = 2
