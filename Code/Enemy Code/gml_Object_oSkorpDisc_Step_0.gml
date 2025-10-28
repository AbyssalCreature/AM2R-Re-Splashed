if (frozen == 0)
{
    if spin
    {
        if (sprite_index == sSkorpDiscLunge || sprite_index == sSkorpDiscLunge_Fusion)
        {
            image_index += 0.2
            if (image_index > 2.8)
            {
                sprite_index = sSkorpDisc
                if oControl.mod_fusion
                    sprite_index = sSkorpDisc_Fusion
            }
        }
        if (sprite_index == sSkorpDisc || sprite_index == sSkorpDisc_Fusion)
            image_index += 0.4
    }
    else if (sprite_index == sSkorpDisc || sprite_index == sSkorpDisc_Fusion)
    {
        image_index = 2
        sprite_index = sSkorpDiscLunge
        if oControl.mod_fusion
            sprite_index = sSkorpDiscLunge_Fusion
    }
    else if ((sprite_index == sSkorpDiscLunge || sprite_index == sSkorpDiscLunge_Fusion) && image_index > 0.2)
        image_index -= 0.1
}
