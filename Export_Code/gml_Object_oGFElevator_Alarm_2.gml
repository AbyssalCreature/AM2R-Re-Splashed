if (oCharacter.y <= y)
{
    mysolid = instance_create((x - 16), y, oSolid1)
    mysolid.image_xscale = 2
}
else if (oCharacter.state != 51 && bottom == 0)
    instance_destroy()
