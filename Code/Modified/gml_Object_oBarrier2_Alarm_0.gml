if ((!frozen) && instance_number(oMeboid2) < 5)
{
    repeat (2)
        instance_create((x + irandom_range(-6, 6)), (y + irandom_range(24, 48)), oMeboid2)
}
alarm[0] = 120
