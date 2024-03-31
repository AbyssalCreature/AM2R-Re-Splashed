image_speed = 0
image_index = 0
state = 0
statetime = 0
if (global.event[152] > 0)
{
    image_index = 8
    with (115280)
        instance_destroy()
    with (115267)
        instance_destroy()
    with (115268)
        instance_destroy()
    with (115270)
        instance_destroy()
    with (115271)
        instance_destroy()
    tile_layer_shift(-102, -336, 0)
    tile_layer_shift(-101, 0, -256)
}
