var itemfusion, suit, TwoD, origitem;
itemfusion = ""
suit = ""
TwoD = ""
origitem = ""
switch sprite_index
{
    case sItemBomb:
        origitem = "sItemBomb"
        break
    case 475:
        origitem = "sItemSpiderBall"
        break
    case 462:
        origitem = "sItemJumpBall"
        break
    case 459:
        origitem = "sItemHijump"
        break
    case 465:
        origitem = "sItemVariaSuit"
        break
    case 461:
        origitem = "sItemSpaceJump"
        break
    case 458:
        origitem = "sItemSpeedBooster"
        break
    case 463:
        origitem = "sItemScrewAttack"
        break
    case 466:
        origitem = "sItemGravitySuit"
        break
    case 471:
        origitem = "sItemIceBeam"
        break
    case 467:
        origitem = "sItemMissile"
        break
    case 468:
        origitem = "sItemSuperMissile"
        break
    case 460:
        origitem = "sItemEnergyTank"
        break
    case 469:
        origitem = "sItemPowerBomb"
        break
    default:
        origitem = ""
}

if (global.currentsuit == 1 && (origitem == "sItemSpiderBall" || origitem == "sItemJumpBall" || origitem == "sItemHijump" || origitem == "sItemSpaceJump"))
    suit = "V"
if (global.currentsuit == 2 && (origitem == "sItemSpiderBall" || origitem == "sItemJumpBall" || origitem == "sItemHijump" || origitem == "sItemSpaceJump"))
    suit = "G"
if (oControl.mod_fusion == 1)
    itemfusion = "_Fusion"
if (origitem == "sItemGravitySuit")
    itemfusion = ""
if (oControl.msr_fusionsuit == 1 && (origitem == "sItemSpiderBall" || origitem == "sItemJumpBall" || origitem == "sItemHijump" || origitem == "sItemSpaceJump" || origitem == "sItemVariaSuit" || origitem == "sItemGravitySuit"))
    TwoD = "2D"
if (origitem != "")
    sprite_index = asset_get_index(origitem + itemfusion + suit + TwoD)
