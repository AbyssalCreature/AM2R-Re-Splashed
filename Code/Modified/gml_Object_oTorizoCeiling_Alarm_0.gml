tile_layer_shift(-101, 0, -1)
yoff -= 1
if (yoff > 16)
    alarm[0] = 1
if (yoff == 271)
    sfx_loop(sndStoneLoop)
else if (yoff == 16)
    sfx_stop(sndStoneLoop)
