var itemfusion, TwoD;
itemfusion = ""
TwoD = ""
if (oControl.mod_fusion == 1)
    itemfusion = "_Fusion"
if (oControl.msr_fusionsuit == 1)
    TwoD = "2D"
sprite_index = asset_get_index((("sItemVariaSuit" + itemfusion) + TwoD))
