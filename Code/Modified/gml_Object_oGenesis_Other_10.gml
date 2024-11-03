var t;
t = 0
if ((oCharacter.x <= x && facing == 1) || (x + (sprite_width / 2)) >= 912)
{
    facing = -1
    if (state != 1)
    {
        turning = 1
        turnframe = 0
        t = 1
    }
}
if (oCharacter.x >= x && facing == -1 && t == 0)
{
    facing = 1
    if (state != 1)
    {
        turning = 1
        turnframe = 0
    }
}
