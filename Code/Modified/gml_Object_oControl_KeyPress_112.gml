if ((!instance_exists(oClient)) && global.canConnect && (!global.TryConnect))
{
    sfx_play(sndMenuSel)
    global.TryConnect = 1
    alarm[6] = 1
}
