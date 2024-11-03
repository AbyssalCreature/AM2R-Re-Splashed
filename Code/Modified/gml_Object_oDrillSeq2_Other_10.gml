active = 0
alarm[1] = 30
with (oDrillBack)
    active = 0
with (oDrillFront)
    instance_destroy()
tile_layer_hide(-91)
tile_layer_show(-92)
global.event[172] = 3
sfx_stop(sndDrillLoop)
sfx_play(sndDrillHit)
