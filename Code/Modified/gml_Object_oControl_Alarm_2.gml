if global.ingame
{
    if (hpalarm == 0)
        alarm[2] = 10
    if (hpalarm == 1)
    {
        hudflash = 10
        alarm[2] = 90
    }
    if (hpalarm == 2)
    {
        hudflash = 12
        alarm[2] = 60
    }
    if (hpalarm == 3)
    {
        hudflash = 15
        alarm[2] = 30
    }
}
else
    alarm[2] = 30
