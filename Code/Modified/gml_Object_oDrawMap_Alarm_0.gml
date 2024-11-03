if (i < 80)
{
    j = 0
    repeat (60)
    {
        mystr = string(global.map[i, j])
        if (mystr != "0")
            instance_create((i * 8), (j * 8), oMapBlock)
        j += 1
    }
}
fx = instance_create((i * 8), 0, oFXTrail)
fx.sprite_index = sMapHilight
fx.fadespeed = 0.2
fx.depth = -5
fx.image_yscale = 80
i += 1
if (i == 80)
    instance_destroy()
alarm[0] = 1
