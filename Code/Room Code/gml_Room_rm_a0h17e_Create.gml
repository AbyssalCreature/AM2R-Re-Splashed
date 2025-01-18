global.mapoffsetx = 49
global.mapoffsety = 34
global.watertype = 0
global.waterlevel = 0
global.floormaterial = 1
if (global.event[172] == 0)
{
    tile_layer_hide(-91)
    tile_layer_hide(-92)
}
if (global.event[172] == 1 || global.event[172] == 2)
{
    tile_layer_hide(-90)
    tile_layer_hide(-92)
}
if (global.event[172] == 3)
{
    tile_layer_hide(-90)
    tile_layer_hide(-91)
}
