active = 0
alarm[1] = 30
with (oDrillTrigger2)
    alarm[0] = 120
with (oDrillBack)
    active = 0
with (oDrillFront)
    active = 0
tile_layer_hide(-90)
tile_layer_show(-91)
global.event[172] = 1
sfx_stop(sndDrillLoop)
sfx_play(sndDrillHit)
