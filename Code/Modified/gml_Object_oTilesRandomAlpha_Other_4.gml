var t, i, j, t_id;
tile_list = ds_list_create()
t = 0
for (i = 0; i < (room_width / 16); i += 1)
{
    for (j = 0; j < (room_height / 16); j += 1)
    {
        t_id = tile_layer_find(layer, (i * 16), (j * 16))
        if (t_id != -1)
        {
            ds_list_add(tile_list, t_id)
            t += 1
        }
    }
}
