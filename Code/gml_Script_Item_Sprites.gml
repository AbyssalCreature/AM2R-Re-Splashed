var itemfusion = "";
var suit = "";
var TwoD = "";
var spid = -1;

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
}

if (global.currentsuit == 1)
    suit = "V";

if (global.currentsuit == 2)
    suit = "G";

if (oControl.mod_fusion == 1)
    itemfusion = "_Fusion";

if (oControl.msr_fusionsuit == 1)
    TwoD = "2D";

if (origitem == "sItemGravitySuit")
{
    itemfusion = "";
    suit = "";
}

if (origitem == "sItemVariaSuit")
    suit = "";

if (origitem == "sItemBomb" || origitem == "sItemSpeedBooster" || origitem == "sItemScrewAttack" || origitem == "sItemIceBeam" || origitem == "sItemMissile" || origitem == "sItemSuperMissile" || origitem == "sItemEnergyTank" || origitem == "sItemPowerBomb")
{
    suit = "";
    TwoD = "";
}

if (origitem != "")
{
    spid = asset_get_index(origitem + itemfusion + suit + TwoD);
    
    if (spid > -1)
    {
        sprite_index = spid;
        
        if (origitem == "sItemSpeedBooster")
            image_speed = 0.5;
        else
            image_speed = 0.2;
    }
}
