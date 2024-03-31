expl = instance_create(targetx, targety, oExplosionSmoke)
expl.width = width
expl.height = height
expl.expl_dir = expl_dir
expl.expl_spd = expl_spd
expl.explosions = explosions
expl.smoke_steps = smoke_steps
if (layer_show != 0)
    tile_layer_show(layer_show)
if (layer_hide != 0)
    tile_layer_hide(layer_hide)
if (obj_destroy != noone)
{
    if (room == rm_a4b07)
    {
        with (obj_destroy)
            instance_destroy()
    }
}
if (room == rm_a4b12)
{
    instance_create(304, 128, oSolid1)
    instance_create(304, 144, oSolid1)
    instance_create(304, 160, oSolid1)
    instance_create(304, 176, oSolid1)
    with (130778)
        instance_destroy()
}
if (room == initroom)
{
    if (obj_move != noone)
    {
        with (obj_move)
            y -= 240
    }
}
debx = lengthdir_x(20, expl_dir)
deby = lengthdir_y(20, expl_dir)
repeat (10)
{
    deb = instance_create((targetx + debx), (targety + deby), oDebris)
    deb.alarm[0] = (60 + random(20))
    deb.direction = random_range((expl_dir - 30), (expl_dir + 30))
    deb.speed = (1 + random(expl_spd))
}
if (ev_state != 0)
    global.event[203] = ev_state
sfx_play(sndA4Expl)
instance_destroy()
