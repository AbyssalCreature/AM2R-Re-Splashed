if (hspeed < 1 && facing == 1)
    hspeed += 0.02
if (hspeed > -1 && facing == -1)
    hspeed -= 0.02
if (collision_line((x + 16), (y - 12), (x + 16), (y + 12), oSolid, true, false) && hspeed > 0)
{
    facing = -1
    hspeed = -0.1
}
if (collision_line((x - 16), (y - 12), (x - 16), (y + 12), oSolid, true, false) && hspeed < 0)
{
    facing = 1
    hspeed = 0.1
}
