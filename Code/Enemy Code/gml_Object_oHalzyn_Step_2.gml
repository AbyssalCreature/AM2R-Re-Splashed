if (instance_exists(shield1) && instance_exists(shield2))
{
    shield1.image_angle = shield_angle
    shield2.image_angle = (-shield_angle)
    shield1.x = round(x) + 8 + shield_offset
    shield1.y = round(y) - 3
    shield2.x = round(x) - 8 - shield_offset
    shield2.y = round(y) - 3
    if (frozen == 0)
    {
        if instance_exists(oLavaSurface)
        {
            if (glow == 1)
            {
                sprite_index = sHalzynBodyA4
                shield1.sprite_index = sHalzynShieldA4
                shield2.sprite_index = sHalzynShieldA4
                if oControl.mod_fusion
                {
                    sprite_index = sHalzynBodyA4_Fusion
                    shield1.sprite_index = sHalzynShieldA4_Fusion
                    shield2.sprite_index = sHalzynShieldA4_Fusion
                }
                eyeSprite = 1706
            }
            else if (glow == 2)
            {
                sprite_index = sHalzynBodyA4
                shield1.sprite_index = sHalzynShieldA4_2
                shield2.sprite_index = sHalzynShieldA4_2
                if oControl.mod_fusion
                {
                    sprite_index = sHalzynBodyA4_Fusion
                    shield1.sprite_index = sHalzynShieldA4_2_Fusion
                    shield2.sprite_index = sHalzynShieldA4_2_Fusion
                }
                eyeSprite = 1706
            }
        }
        else
        {
            glow = 0
            sprite_index = sHalzynBody
            shield1.sprite_index = sHalzynShield
            shield2.sprite_index = sHalzynShield
            if oControl.mod_fusion
            {
                sprite_index = sHalzynBody_Fusion
                shield1.sprite_index = sHalzynShield_Fusion
                shield2.sprite_index = sHalzynShield_Fusion
            }
        }
        shield1.canhit = 1
        shield2.canhit = 1
    }
    else
    {
        shield1.sprite_index = sHalzynShieldFrozen
        shield2.sprite_index = sHalzynShieldFrozen
        if oControl.mod_fusion
        {
            shield1.sprite_index = sHalzynShieldFrozen_Fusion
            shield2.sprite_index = sHalzynShieldFrozen_Fusion
        }
        shield1.canhit = 0
        shield2.canhit = 0
    }
}
