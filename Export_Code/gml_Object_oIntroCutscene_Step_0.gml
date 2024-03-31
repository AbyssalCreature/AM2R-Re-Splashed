if (state == 0)
{
    if (statetime == 200)
    {
        instance_create(0, 0, oIntroText1)
        mus_play_once(musIntroSeq)
    }
    if (statetime == 2900)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime < 60)
    {
        if (s1fade_alpha > 0)
            s1fade_alpha -= 0.05
    }
    if (statetime == 50)
    {
        ship1 = instance_create(32, 32, oIntroShip1)
        s1bgoffx = -1
    }
    if (statetime > 30)
    {
        if (s1bgoffx > -160)
            s1bgoffx *= 1.2
    }
    if (statetime == 90)
    {
        state = 2
        statetime = 0
        with (ship1)
            instance_destroy()
    }
}
if (state == 2)
{
    if (statetime == 0)
        ship2 = instance_create(160, 120, oIntroShip2)
    if (statetime > 5)
        s2bgoffx = lerp(s2bgoffx, -160, 0.017)
    if (statetime == 240)
    {
        state = 3
        statetime = 0
        with (ship2)
            instance_destroy()
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        ship3 = instance_create(160, 80, oIntroShip3)
        s3cloudsf = instance_create(0, 0, oIntroClouds)
        s3bgspeedx = 0.6
        s3bgspeedy = 0.4
    }
    if (statetime > 70)
    {
        if (s3cloudsf.image_alpha > 0)
            s3cloudsf.image_alpha -= 0.02
    }
    if (statetime > 100)
    {
        if (s3cloudsb_alpha > 0)
            s3cloudsb_alpha -= 0.02
    }
    if (ship3.state == 1)
    {
    }
    if (ship3.state == 2)
        s3bgspeedx *= 0.95
    if (statetime > 380)
    {
        if (s3fade_alpha < 1)
            s3fade_alpha += 0.02
    }
    s3bgoffx -= s3bgspeedx
    s3bgoffy -= s3bgspeedy
    s3cloudsb_x -= 6
    s3cloudsb_y -= 4
    s3cloudsf.x -= 20
    s3cloudsf.y -= 12
    if (statetime == 500)
        event_user(0)
}
if (totalframes >= 200)
{
    if oControl.kStart
    {
        mus_fadeout(musIntroSeq)
        event_user(0)
    }
}
if (totalframes == 2941)
    sfx_play(sndShipLand)
statetime += 1
totalframes += 1
