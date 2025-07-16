var itemfusion, TwoD;
event_inherited()
itemfusion = ""
TwoD = ""
if (oControl.mod_fusion && (!global.sax))
    itemfusion = "_Fusion"
if (oControl.msr_fusionsuit == 1 && (!global.sax))
    TwoD = "2D"
if (!global.sax)
    sprite_index = asset_get_index("sItemVariaSuit" + itemfusion + TwoD)
