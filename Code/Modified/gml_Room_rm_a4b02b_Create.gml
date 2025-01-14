global.mapoffsetx = 33
global.mapoffsety = 46
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
instance_create(112, 112, scr_itemsopen(oControl.mod_254))
instance_create(528, 64, scr_itemsopen(oControl.mod_255))
instance_create(314, 192, scr_itemsopen(oControl.mod_253))
if (global.saxmode && global.item[0] == 0 && global.ptanks <= 1)
{
    with (129680)
        instance_destroy()
}
