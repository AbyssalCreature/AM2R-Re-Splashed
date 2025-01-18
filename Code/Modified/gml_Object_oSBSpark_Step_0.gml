if instance_exists(oCharacter)
{
    if (oCharacter.state == 11 && oCharacter.speedboost)
    {
        if follow
        {
            if (oCharacter.xVel > 0)
                x = (oCharacter.x + xoffset)
            else
            {
                x = (oCharacter.x - xoffset)
                image_xscale = -1
            }
        }
    }
    else
        instance_destroy()
}
fxtimer = (!fxtimer)
