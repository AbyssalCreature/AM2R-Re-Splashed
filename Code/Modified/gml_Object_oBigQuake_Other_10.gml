if (global.classicmode == 0)
{
    view_xport[0] = 0
    view_yport[0] = 0
    oControl.xShake = 0
    oControl.yShake = 0
}
if (global.classicmode == 1)
{
    view_xport[0] = 80
    view_yport[0] = 40
    oControl.xShake = 0
    oControl.yShake = 0
}
global.quake = 0
add_log(3)
sfx_stop(sndQuakeLoop)
instance_destroy()
