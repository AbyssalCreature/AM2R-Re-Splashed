var itemfusion, suit, TwoD;
itemfusion = ""
suit = ""
TwoD = ""
if (global.currentsuit == 1)
    suit = "V"
if (global.currentsuit == 2)
    suit = "G"
if (oControl.mod_fusion == 1)
{
    itemfusion = "_Fusion"
    if global.ibeam
        suit = "O"
}
if (oControl.msr_fusionsuit == 1)
    TwoD = "2D"
sprite_index = asset_get_index(((("sItemSpiderBall" + itemfusion) + suit) + TwoD))
