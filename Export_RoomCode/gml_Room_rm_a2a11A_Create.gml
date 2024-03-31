global.mapoffsetx = 35
global.mapoffsety = 22
global.waterlevel = 0
global.watertype = 0
if (global.event[102] == 1)
{
    instance_create(0, -64, oA2WaterSpawner)
    instance_create(168, 200, oA2WJWaterA)
    instance_create(168, 216, oA2WJWaterA)
    instance_create(168, 232, oA2WJWaterA)
    instance_create(168, 248, oA2WJWaterA)
}
