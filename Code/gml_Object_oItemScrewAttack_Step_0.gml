var itemfusion = "";
var suit = "";
var TwoD = "";
var origitem = "";

switch (sprite_index)
{
    case sItemBomb:
        origitem = "sItemBomb";
        break;
    
    case sItemSpiderBall:
        origitem = "sItemSpiderBall";
        break;
    
    case sItemJumpBall:
        origitem = "sItemJumpBall";
        break;
    
    case sItemHijump:
        origitem = "sItemHijump";
        break;
    
    case sItemVariaSuit:
        origitem = "sItemVariaSuit";
        break;
    
    case sItemSpaceJump:
        origitem = "sItemSpaceJump";
        break;
    
    case sItemSpeedBooster:
        origitem = "sItemSpeedBooster";
        break;
    
    case sItemScrewAttack:
        origitem = "sItemScrewAttack";
        break;
    
    case sItemGravitySuit:
        origitem = "sItemGravitySuit";
        break;
    
    case sItemIceBeam:
        origitem = "sItemIceBeam";
        break;
    
    case sItemMissile:
        origitem = "sItemMissile";
        break;
    
    case sItemSuperMissile:
        origitem = "sItemSuperMissile";
        break;
    
    case sItemEnergyTank:
        origitem = "sItemEnergyTank";
        break;
    
    case sItemPowerBomb:
        origitem = "sItemPowerBomb";
        break;
    
    default:
        origitem = "";
}

if (global.currentsuit == 1 && (origitem == "sItemSpiderBall" || origitem == "sItemJumpBall" || origitem == "sItemHijump" || origitem == "sItemSpaceJump"))
    suit = "V";

if (global.currentsuit == 2 && (origitem == "sItemSpiderBall" || origitem == "sItemJumpBall" || origitem == "sItemHijump" || origitem == "sItemSpaceJump"))
    suit = "G";

if (oControl.mod_fusion == 1)
    itemfusion = "_Fusion";

if (origitem == "sItemGravitySuit")
    itemfusion = "";

if (oControl.msr_fusionsuit == 1 && (origitem == "sItemSpiderBall" || origitem == "sItemJumpBall" || origitem == "sItemHijump" || origitem == "sItemSpaceJump" || origitem == "sItemVariaSuit" || origitem == "sItemGravitySuit"))
    TwoD = "2D";

if (origitem != "")
    sprite_index = asset_get_index(origitem + itemfusion + suit + TwoD);
