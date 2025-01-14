var i;
for (i = 0; i < array_length_1d(tile_list); i += 1)
{
    if tile_exists(tile_list[i])
        tile_set_alpha(tile_list[i], falpha)
}
