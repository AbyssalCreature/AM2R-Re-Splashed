if (state == 0)
{
}
if (state == 1)
{
    if (statetime == 0)
        mus_current_fadeout()
    if (statetime == 90)
    {
        shaking = 20
        sfx_play(sndMZetaCocoon1)
    }
    if (statetime == 180)
    {
        shaking = 25
        sfx_play(sndMZetaCocoon2)
    }
    if (statetime == 300)
    {
        state = 2
        statetime = 0
        event_user(0)
        sfx_play(sndMZetaCocoon3)
        bld = instance_create(x, (y - 24), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld = instance_create((x - 10), (y - 18), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.4
        bld.image_alpha = 0.6
        bld.image_angle = 60
        bld = instance_create((x + 12), (y - 20), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.45
        bld.image_alpha = 0.6
        bld.image_angle = -60
    }
}
if (state == 2)
{
    piece0x = lerp(piece0x, -30, 0.2)
    piece0y = lerp(piece0y, -6, 0.2)
    piece0a = lerp(piece0a, 81, 0.05)
    piece1x = lerp(piece1x, -14, 0.2)
    piece1y = lerp(piece1y, 0, 0.2)
    piece1a = lerp(piece1a, 36, 0.1)
    piece2x = lerp(piece2x, -3, 0.2)
    piece2y = lerp(piece2y, 4, 0.2)
    piece2a = lerp(piece2a, 64, 0.15)
    piece3x = lerp(piece3x, 5, 0.2)
    piece3y = lerp(piece3y, -4, 0.2)
    piece3a = lerp(piece3a, -40, 0.1)
    piece4x = lerp(piece4x, 24, 0.2)
    piece4y = lerp(piece4y, -10, 0.2)
    piece4a = lerp(piece4a, -69, 0.05)
}
if (state == 3)
{
    piece0x = -30
    piece0y = -6
    piece0a = 81
    piece1x = -14
    piece1y = 0
    piece1a = 36
    piece2x = -3
    piece2y = 4
    piece2a = 64
    piece3x = 5
    piece3y = -4
    piece3a = -40
    piece4x = 24
    piece4y = -10
    piece4a = -69
}
if (shaking > 0)
{
    xoff0 = choose(-1, 0, 1)
    yoff0 = choose(-1, 0, 1)
    xoff1 = choose(-1, 0, 1)
    yoff1 = choose(-1, 0, 1)
    xoff2 = choose(-1, 0, 1)
    yoff2 = choose(-1, 0, 1)
    xoff3 = choose(-1, 0, 1)
    yoff3 = choose(-1, 0, 1)
    xoff4 = choose(-1, 0, 1)
    yoff4 = choose(-1, 0, 1)
}
else
{
    xoff0 = 0
    yoff0 = 0
    xoff1 = 0
    yoff1 = 0
    xoff2 = 0
    yoff2 = 0
    xoff3 = 0
    yoff3 = 0
    xoff4 = 0
    yoff4 = 0
}
if (statetime < 900)
    statetime += 1
if (shaking > 0)
    shaking -= 1
