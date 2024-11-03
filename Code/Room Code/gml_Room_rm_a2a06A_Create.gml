global.mapoffsetx = 36
global.mapoffsety = 20
global.waterlevel = 0
global.watertype = 0
global.moverobj = 0
global.floormaterial = 4
if (global.event[102] == 1)
{
    instance_create(0, -64, oA2WaterSpawner)
    instance_create(136, 200, oA2WJWaterA)
    instance_create(136, 216, oA2WJWaterA)
    instance_create(136, 232, oA2WJWaterA)
    instance_create(136, 248, oA2WJWaterA)
}
instance_create(256, 160, scr_itemsopen(oControl.mod_159))
