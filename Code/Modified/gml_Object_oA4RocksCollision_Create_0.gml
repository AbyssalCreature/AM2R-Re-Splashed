if (global.event[206] != 0)
{
    with (oA4Rock)
        instance_destroy()
    with (oA4RockTop)
        instance_destroy()
    instance_destroy()
}
else
{
    mysolid = instance_create(x, y, oSolid1)
    mysolid.image_xscale = 2
    mysolid.image_yscale = 4
}
