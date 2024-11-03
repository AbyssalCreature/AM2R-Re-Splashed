repeat (2)
{
    smk = instance_create(((x + 2) + random(10)), ((y + 2) + random(10)), oFXAnimSpark)
    smk.image_speed = (0.6 + random(0.7))
    smk.additive = 0
    smk.sprite_index = sSmoke1
    smk.image_alpha = 0.4
    smk.direction = (250 + random(40))
    smk.speed = random(1)
    smk.depth = -101
}
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
alarm[0] = 1
sfx_stop(sndBlockDestroy)
sfx_play(sndBlockDestroy)
instance_destroy()
