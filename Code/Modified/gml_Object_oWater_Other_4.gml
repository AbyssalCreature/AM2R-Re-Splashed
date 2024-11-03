if instance_exists(oCharacter)
{
    if (oCharacter.inwater || oCharacter.y > (global.waterlevel + oWater.yoffset))
        spr_alpha = 0.1
}
