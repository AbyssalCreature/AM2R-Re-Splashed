if (argument0 == 0)
{
    if (room == rm_a0h01 || room == rm_a0h02 || room == rm_a0h02a)
    {
        with (oBackground)
        {
            bgid[0] = 177
            if oControl.widescreen
                bgid[0] = 329
            bgid[1] = 180
            bgid[2] = 180
            bgid[3] = 180
            bgid[4] = 180
            if oControl.widescreen
                bgid[5] = 180
        }
        with (oShip1)
            sprite_index = sShip
        tile_layer_delete(110)
        tile_layer_delete(120)
        tile_layer_delete(-110)
        tile_layer_delete(-120)
        tile_layer_delete(-111)
        tile_layer_delete(-121)
    }
    if (room == rm_a1h05)
    {
        with (oBackground)
        {
            bgid[0] = 177
            if oControl.widescreen
                bgid[0] = 329
            bgid[1] = 194
        }
    }
}
if (argument0 == 1)
{
    if (room == rm_a0h01 || room == rm_a0h02 || room == rm_a0h02a)
    {
        with (oBackground)
        {
            bgid[0] = 179
            if oControl.widescreen
                bgid[0] = 330
            bgid[1] = 182
            bgid[2] = 182
            bgid[3] = 182
            bgid[4] = 182
            if oControl.widescreen
                bgid[5] = 182
        }
        with (oShip1)
            sprite_index = sShip
        tile_layer_delete(100)
        tile_layer_delete(120)
        tile_layer_delete(-100)
        tile_layer_delete(-120)
        tile_layer_delete(-101)
        tile_layer_delete(-121)
    }
    if (room == rm_a1h05)
    {
        with (oBackground)
        {
            bgid[0] = 179
            if oControl.widescreen
                bgid[0] = 330
            bgid[1] = 195
        }
    }
}
if (argument0 == 2)
{
    if (room == rm_a0h01 || room == rm_a0h02 || room == rm_a0h02a)
    {
        with (oBackground)
        {
            bgid[0] = 178
            if oControl.widescreen
                bgid[0] = 331
            bgid[1] = 181
            bgid[2] = 181
            bgid[3] = 181
            bgid[4] = 181
            if oControl.widescreen
                bgid[5] = 181
        }
        with (oShip1)
            sprite_index = sShipNight
        tile_layer_delete(110)
        tile_layer_delete(100)
        tile_layer_delete(-110)
        tile_layer_delete(-100)
        tile_layer_delete(-111)
        tile_layer_delete(-101)
    }
    if (room == rm_a1h05)
    {
        with (oBackground)
        {
            bgid[0] = 178
            if oControl.widescreen
                bgid[0] = 331
            bgid[1] = 196
        }
    }
}
