if (global.item[oControl.mod_50] == 1)
{
    with (oDoor)
        event_user(0)
    mus_current_fadeout()
    instance_create(512, 64, oGenesis)
    instance_create(0, 0, oA8RedLightFX)
    with (oLight)
        fadeout = 1
    instance_destroy()
}
