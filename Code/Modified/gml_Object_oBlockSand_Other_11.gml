if tile_exists(tileid)
{
    tile_delete(tileid)
    tileid = -1
}
if tile_exists(tilesandcrn0)
{
    tile_delete(tilesandcrn0)
    tilesandcrn0 = -1
}
if tile_exists(tilesandcrn1)
{
    tile_delete(tilesandcrn1)
    tilesandcrn1 = -1
}
if tile_exists(tilesandcrn2)
{
    tile_delete(tilesandcrn2)
    tilesandcrn2 = -1
}
if tile_exists(tilesandcrn3)
{
    tile_delete(tilesandcrn3)
    tilesandcrn3 = -1
}
instance_activate_region((x - 32), (y - 32), 64, 64, true)
if instance_position(x, (y - 16), oBlockSand)
    sandu = 1
else
    sandu = 0
if instance_position((x + 16), y, oBlockSand)
    sandr = 1
else
    sandr = 0
if instance_position(x, (y + 16), oBlockSand)
    sandd = 1
else
    sandd = 0
if instance_position((x - 16), y, oBlockSand)
    sandl = 1
else
    sandl = 0
if instance_position((x + 16), (y - 16), oBlockSand)
    sandur = 1
else
    sandur = 0
if instance_position((x - 16), (y - 16), oBlockSand)
    sandul = 1
else
    sandul = 0
if instance_position((x + 16), (y + 16), oBlockSand)
    sanddr = 1
else
    sanddr = 0
if instance_position((x - 16), (y + 16), oBlockSand)
    sanddl = 1
else
    sanddl = 0
if (sandu && sandr && (!sandur))
    sandcrn2 = 1
else
    sandcrn2 = 0
if (sandu && sandl && (!sandul))
    sandcrn3 = 1
else
    sandcrn3 = 0
if (sandd && sandr && (!sanddr))
    sandcrn0 = 1
else
    sandcrn0 = 0
if (sandd && sandl && (!sanddl))
    sandcrn1 = 1
else
    sandcrn1 = 0
if (sandu && sandr && sandd && sandl)
    image_index = 0
if ((!sandu) && sandr && sandd && sandl)
    image_index = 1
if (sandu && (!sandr) && sandd && sandl)
    image_index = 2
if (sandu && sandr && (!sandd) && sandl)
    image_index = 3
if (sandu && sandr && sandd && (!sandl))
    image_index = 4
if ((!sandu) && (!sandr) && sandd && sandl)
    image_index = 5
if (sandu && (!sandr) && (!sandd) && sandl)
    image_index = 6
if (sandu && sandr && (!sandd) && (!sandl))
    image_index = 7
if ((!sandu) && sandr && sandd && (!sandl))
    image_index = 8
if ((!sandu) && sandr && (!sandd) && sandl)
    image_index = 9
if (sandu && (!sandr) && sandd && (!sandl))
    image_index = 10
if ((!sandu) && sandr && (!sandd) && (!sandl))
    image_index = 11
if ((!sandu) && (!sandr) && sandd && (!sandl))
    image_index = 12
if ((!sandu) && (!sandr) && (!sandd) && sandl)
    image_index = 13
if (sandu && (!sandr) && (!sandd) && (!sandl))
    image_index = 14
if ((!sandu) && (!sandr) && (!sandd) && (!sandl))
    image_index = 15
alarm[1] = 1
