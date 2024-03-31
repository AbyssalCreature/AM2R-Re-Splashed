if (active == 0)
{
    active = 1
    w = instance_create((x + 8), (y + 16), oFXAnimSpark)
    w.image_speed = 0.5
    w.additive = 0
    w.sprite_index = sWaterSplash
    w.image_alpha = 0.8
    alarm[0] = 8
    alarm[1] = 3
    global.event[102] = 0
    audio_stop_sound(sndA2WJLoop)
    sfx_play(sndWaterSplash)
}
