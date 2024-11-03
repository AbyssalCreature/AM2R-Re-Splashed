if (state == 1)
{
    state = 2
    alarm[1] = 180
    exit
}
if (state == 2)
{
    state = 3
    alarm[1] = 30
    exit
}
if (state == 3)
{
    state = 1
    alarm[1] = 120
    exit
}
