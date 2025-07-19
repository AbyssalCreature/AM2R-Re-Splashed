var itemfusion, suit, TwoD;
event_inherited()
itemfusion = ""
suit = ""
TwoD = ""
if (global.currentsuit == 1)
    suit = "V"
if (global.currentsuit == 2)
    suit = "G"
if (oControl.mod_fusion == 1)
    itemfusion = "_Fusion"
if (oControl.msr_fusionsuit == 1)
    TwoD = "2D"
switch multiItem
{
    case 0:
        sprite_index = sItemBomb
        if oControl.mod_fusion
            sprite_index = sItemBomb_Fusion
        break
    case 2:
        sprite_index = asset_get_index("sItemSpiderBall" + itemfusion + suit + TwoD)
        break
    case 3:
        sprite_index = asset_get_index("sItemJumpBall" + itemfusion + suit + TwoD)
        break
    case 4:
        sprite_index = asset_get_index("sItemHijump" + itemfusion + suit + TwoD)
        break
    case 5:
        sprite_index = asset_get_index("sItemVariaSuit" + itemfusion + TwoD)
        break
    case 6:
        sprite_index = asset_get_index("sItemSpaceJump" + itemfusion + suit + TwoD)
        break
    case 7:
        sprite_index = sItemSpeedBooster
        if oControl.mod_fusion
            sprite_index = sItemSpeedBooster_Fusion
        image_speed = 0.5
        break
    case 8:
        sprite_index = sItemScrewAttack
        if oControl.mod_fusion
            sprite_index = sItemScrewAttack_Fusion
        break
    case 9:
        sprite_index = sItemGravitySuit
        if (oControl.msr_fusionsuit == 1)
            sprite_index = sItemGravitySuit2D
        break
    case 10:
        sprite_index = sItemChargeBeam
        break
    case 11:
        sprite_index = sItemIceBeam
        if oControl.mod_fusion
            sprite_index = sItemIceBeam_Fusion
        break
    case 12:
        sprite_index = sItemWaveBeam
        break
    case 13:
        sprite_index = sItemSpazerBeam
        break
    case 14:
        sprite_index = sItemPlasmaBeam
        break
    case 15:
        sprite_index = sItemMissile
        if oControl.mod_fusion
            sprite_index = sItemMissile_Fusion
        break
    case 16:
        sprite_index = sItemSuperMissile
        if oControl.mod_fusion
            sprite_index = sItemSuperMissile_Fusion
        break
    case 17:
        sprite_index = sItemEnergyTank
        if oControl.mod_fusion
            sprite_index = sItemEnergyTank_Fusion
        break
    case 18:
        sprite_index = sItemPowerBomb
        if oControl.mod_fusion
            sprite_index = sItemPowerBomb_Fusion
        break
    case 19:
        sprite_index = sItemDNA
        skip = 1
        break
    case 20:
        sprite_index = sItemMW
        break
    default:
        sprite_index = sItemMW
        break
}

