if active
{
    toff += 8
    tile_layer_shift(-102, 0, 8)
    if (toff == 64)
    {
        make_explosion1big(272, 160)
        make_explosion1big(304, 160)
        with (130836)
            instance_destroy()
        instance_destroy()
    }
}
