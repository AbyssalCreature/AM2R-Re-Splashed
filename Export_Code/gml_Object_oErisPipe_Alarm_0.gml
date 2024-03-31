var sp;
if (state == 1)
{
    sp = instance_create((x + ((1 - facing) * 3.5)), (y + irandom(16)), oSparkParticle)
    sp.mycolor = 16776960
}
alarm[0] = ((30 + irandom((60 - (50 * active)))) - (29 * active))
