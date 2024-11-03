image_speed = 0
image_index = 0
state = 0
statetime = 0
if (global.event[152] > 0)
{
    image_index = 8
    with (115253)
        instance_destroy()
    with (115240)
        instance_destroy()
    with (115241)
        instance_destroy()
    with (115243)
        instance_destroy()
    with (115244)
        instance_destroy()
    tile_layer_shift(-102, -336, 0)
    tile_layer_shift(-101, 0, -256)
}
