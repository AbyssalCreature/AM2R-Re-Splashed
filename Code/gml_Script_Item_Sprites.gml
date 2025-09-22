var itemfusion, suit, TwoD, spid;
itemfusion = ""
suit = ""
TwoD = ""
spid = -1
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
}

if (global.currentsuit == 1)
    suit = "V"
if (global.currentsuit == 2)
    suit = "G"
if (oControl.mod_fusion == 1)
    itemfusion = "_Fusion"
if (oControl.msr_fusionsuit == 1)
    TwoD = "2D"
if (origitem == "sItemGravitySuit")
{
    itemfusion = ""
    suit = ""
}
if (origitem == "sItemVariaSuit")
    suit = ""
if (origitem == "sItemBomb" || origitem == "sItemSpeedBooster" || origitem == "sItemScrewAttack" || origitem == "sItemIceBeam" || origitem == "sItemMissile" || origitem == "sItemSuperMissile" || origitem == "sItemEnergyTank" || origitem == "sItemPowerBomb")
{
    suit = ""
    TwoD = ""
}
if (origitem != "")
{
    spid = asset_get_index(origitem + itemfusion + suit + TwoD)
    if (spid > -1)
    {
        sprite_index = spid
        if (origitem == "sItemSpeedBooster")
            image_speed = 0.5
        else
            image_speed = 0.2
    }
}
