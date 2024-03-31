var mtid;
if (tileid != 0)
{
    if tile_exists(tileid)
    {
        tile_delete(tileid)
        tileid = -1
        visible = true
    }
}
mtid = tile_layer_find(tl1_delete_layer, x, y)
if (mtid != -1)
{
    if tile_exists(mtid)
        tile_delete(mtid)
}
mtid = tile_layer_find(tl2_delete_layer, x, y)
if (mtid != -1)
{
    if tile_exists(mtid)
        tile_delete(mtid)
}
