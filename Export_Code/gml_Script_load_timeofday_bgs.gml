if (argument0 == 0)
{
    if (room == rm_a0h01 || room == rm_a0h02 || room == rm_a0h02a)
    {
        with (oBackground)
        {
            bgid[0] = 175
            if oControl.widescreen
                bgid[0] = 325
            bgid[1] = 178
            bgid[2] = 178
            bgid[3] = 178
            bgid[4] = 178
            if oControl.widescreen
                bgid[5] = 178
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
            bgid[0] = 175
            if oControl.widescreen
                bgid[0] = 325
            bgid[1] = 192
        }
    }
}
if (argument0 == 1)
{
    if (room == rm_a0h01 || room == rm_a0h02 || room == rm_a0h02a)
    {
        with (oBackground)
        {
            bgid[0] = 177
            if oControl.widescreen
                bgid[0] = 326
            bgid[1] = 180
            bgid[2] = 180
            bgid[3] = 180
            bgid[4] = 180
            if oControl.widescreen
                bgid[5] = 180
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
            bgid[0] = 177
            if oControl.widescreen
                bgid[0] = 326
            bgid[1] = 193
        }
    }
}
if (argument0 == 2)
{
    if (room == rm_a0h01 || room == rm_a0h02 || room == rm_a0h02a)
    {
        with (oBackground)
        {
            bgid[0] = 176
            if oControl.widescreen
                bgid[0] = 327
            bgid[1] = 179
            bgid[2] = 179
            bgid[3] = 179
            bgid[4] = 179
            if oControl.widescreen
                bgid[5] = 179
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
            bgid[0] = 176
            if oControl.widescreen
                bgid[0] = 327
            bgid[1] = 194
        }
    }
}
