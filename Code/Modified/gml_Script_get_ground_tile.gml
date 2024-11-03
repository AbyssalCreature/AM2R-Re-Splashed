var xx, yy, tile;
xx = argument0
yy = argument1
tile = tile_layer_find(-100, xx, yy)
if (tile == -1)
    tile = tile_layer_find(-90, xx, yy)
if (tile == -1)
    tile = tile_layer_find(-99, xx, yy)
if (tile == -1)
    tile = tile_layer_find(-101, xx, yy)
if (tile == -1)
    tile = tile_layer_find(-105, xx, yy)
if (tile == -1)
    tile = tile_layer_find(-110, xx, yy)
if (tile == -1)
    tile = tile_layer_find(-120, xx, yy)
return tile;
