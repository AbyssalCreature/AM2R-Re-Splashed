if (state == 3 && statetime < 70)
{
    prj = instance_create((x + (20 * facing)), (y - 22), oGenesisAcid)
    prj.hspeed = ((6 + random(3)) * facing)
    prj.vspeed = (1 - random(3))
    alarm[0] = 2
}
