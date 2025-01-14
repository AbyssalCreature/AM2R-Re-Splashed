var itemfusion, suit;
itemfusion = ""
suit = ""
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
sprite_index = asset_get_index((("sItemHijump" + itemfusion) + suit))
