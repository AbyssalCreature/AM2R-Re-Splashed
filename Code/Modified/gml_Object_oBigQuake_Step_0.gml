if global.ingame
{
    statetime += 1
    if (statetime == 595)
    {
        sid = sfx_loop(sndQuakeLoop)
        audio_sound_gain(sid, 0.05, 0)
        audio_sound_gain(sid, (global.opsoundvolume / 100), 1500)
    }
    if (statetime == 600)
    {
        global.quake = 1
        intensity = 1
    }
    if (statetime == 630)
        intensity = 2
    if (statetime == 660)
        intensity = 3
    if (statetime == 690)
        intensity = 4
    if (statetime == 1050)
    {
        intensity = 3
        audio_sound_gain(sid, 0, 1500)
    }
    if (statetime == 1100)
        intensity = 2
    if (statetime == 1150)
        intensity = 1
    if (statetime == 1190)
        intensity = 0
    if (statetime == 1200)
        event_user(0)
    if (statetime == 1000 && global.lavastate >= 10)
        sfx_play(sndQueenDistant)
    if global.quake
    {
        if (global.classicmode == 0)
        {
            view_xport[0] = round(random(intensity))
            view_yport[0] = round(random(intensity))
            oControl.xShake = round(random(intensity))
            oControl.yShake = round(random(intensity))
        }
        if (global.classicmode == 1)
        {
            view_xport[0] = (80 + round(random(intensity)))
            view_yport[0] = (40 + round(random(intensity)))
            oControl.xShake = (80 + round(random(intensity)))
            oControl.yShake = (40 + round(random(intensity)))
        }
    }
    if global.opxjoyvib
    {
        global.vibL = (intensity * 0.15)
        global.vibR = (intensity * 0.15)
    }
}
else
{
    view_xport[0] = 0
    view_yport[0] = 0
    oControl.xShake = 0
    oControl.yShake = 0
}
