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
multiItem = GetMultiItem(itemid)
switch multiItem
{
    case 0:
        sprite_index = sItemBomb
        if oControl.mod_fusion
            sprite_index = sItemBomb_Fusion
        break
    case 1:
        sprite_index = sItemPowergrip
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
        sprite_index = sItemChinyBombs
        break
    case 21:
        sprite_index = sItemChinyPowerGrip
    case 22:
        sprite_index = sItemChinySpiderBall
        break
    case 23:
        sprite_index = sItemChinyJumpBall
        break
    case 24:
        sprite_index = sItemChinyHiJump
        break
    case 25:
        sprite_index = sItemChinyVariaSuit
        break
    case 26:
        sprite_index = sItemChinySpaceJump
        break
    case 27:
        sprite_index = sItemChinySpeedBooster
        image_speed = 0.5
        break
    case 28:
        sprite_index = sItemChinyScrewAttack
        break
    case 29:
        sprite_index = sItemChinyGravitySuit
        break
    case 30:
        sprite_index = sItemChinyChargeBeam
        break
    case 31:
        sprite_index = sItemChinyIceBeam
        break
    case 32:
        sprite_index = sItemChinyWaveBeam
        break
    case 33:
        sprite_index = sItemChinySpazerBeam
        break
    case 34:
        sprite_index = sItemChinyPlasmaBeam
        break
    case 35:
        sprite_index = sItemChinyMissileTank
        break
    case 36:
        sprite_index = sItemChinySuperMissileTank
        break
    case 37:
        sprite_index = sItemChinyEnergyTank
        break
    case 38:
        sprite_index = sItemChinyPowerBombTank
        break
    case 39:
        sprite_index = sItemChinyDNA
        skip = 1
        break
    case 40:
        sprite_index = sItemEvilEnergyTankF
        break
    case 41:
        sprite_index = sItemEvilMissileF
        break
    case 42:
        sprite_index = sItemEvilPowerBombF
        break
    case 43:
        sprite_index = sItemQuestionMark
        break
    case 44:
        sprite_index = sItemEvilSuperMissileF
        break
    case 45:
        sprite_index = sItemEvilPowergripF
        break
    case 46:
        sprite_index = sItemEvilGravitySuitF
        break
    case 47:
        sprite_index = sItemEvilSpazerBeamF
        break
    case 50:
        sprite_index = sItemEvilBomb
        if oControl.mod_fusion
            sprite_index = sItemEvilBomb_Fusion
        break
    case 51:
        sprite_index = sItemEvilChargeBeam
        break
    case 52:
        sprite_index = sItemEvilDNA
        break
    case 53:
        sprite_index = sItemEvilEnergyTank
        if oControl.mod_fusion
            sprite_index = sItemEvilEnergyTank_Fusion
        break
    case 54:
        sprite_index = sItemEvilIceBeam
        break
    case 55:
        sprite_index = sItemEvilMissile
        if oControl.mod_fusion
            sprite_index = sItemEvilMissile_Fusion
        break
    case 56:
        sprite_index = sItemEvilPlasmaBeam
        break
    case 57:
        sprite_index = sItemEvilPowerBomb
        if oControl.mod_fusion
            sprite_index = sItemEvilPowerBomb_Fusion
        break
    case 58:
        sprite_index = sItemMWGold
        break
    case 59:
        sprite_index = sItemEvilSpazerBeam
        break
    case 60:
        sprite_index = sItemEvilSpeedBooster
        if oControl.mod_fusion
            sprite_index = sItemEvilSpeedBooster_Fusion
        break
    case 61:
        sprite_index = sItemEvilSuperMissile
        if oControl.mod_fusion
            sprite_index = sItemEvilSuperMissile_Fusion
        break
    case 62:
        sprite_index = sItemEvilWaveBeam
        break
    case 70:
        sprite_index = sItemVEvilBomb
        if oControl.mod_fusion
            sprite_index = sItemVEvilBomb_Fusion
        break
    case 71:
        sprite_index = sItemVEvilChargeBeam
        break
    case 72:
        sprite_index = sItemVEvilDNA
        break
    case 73:
        sprite_index = sItemVEvilEnergyTank
        if oControl.mod_fusion
            sprite_index = sItemVEvilEnergyTank_Fusion
        break
    case 74:
        sprite_index = sItemVEvilIceBeam
        if oControl.mod_fusion
            sprite_index = sItemVEvilIceBeam_Fusion
        break
    case 75:
        sprite_index = sItemVEvilMissile
        if oControl.mod_fusion
            sprite_index = sItemVEvilMissile_Fusion
        break
    case 76:
        sprite_index = sItemVEvilPlasmaBeam
        break
    case 77:
        sprite_index = sItemVEvilPowerBomb
        if oControl.mod_fusion
            sprite_index = sItemVEvilPowerBomb_Fusion
        break
    case 78:
        sprite_index = sItemMWGold
        break
    case 79:
        sprite_index = sItemVEvilSpazerBeam
        break
    case 80:
        sprite_index = sItemVEvilSpeedBooster
        if oControl.mod_fusion
            sprite_index = sItemVEvilSpeedBooster
        break
    case 81:
        sprite_index = sItemVEvilSuperMissile
        if oControl.mod_fusion
            sprite_index = sItemVEvilSuperMissile_Fusion
        break
    case 82:
        sprite_index = sItemVEvilWaveBeam
        break
    case 100:
        sprite_index = sItemMW
        break
    case 101:
        sprite_index = sItemMW2
        break
    case 102:
        sprite_index = sItemChinyAP
        break
    case 103:
        sprite_index = sItemChinyAP2
        break
    default:
        sprite_index = sItemMW2
        break
}

