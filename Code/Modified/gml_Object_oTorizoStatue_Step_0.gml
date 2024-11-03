if (state == 1)
{
    if (statetime == 0)
        image_index = 1
    if (statetime == 120)
    {
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    if (statetime == 0)
        instance_create((x + 15), (y + 6), oTorizoStatueEye)
    if (statetime == 220)
    {
        state = 3
        statetime = 0
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        image_index = 2
        instance_create((x + 37), (y + 24), oTorizoStatuePiece1)
        mus_play(musTorizoA)
        oMusicV2.bossbgm = 270
    }
    if (statetime == 60)
    {
        state = 4
        statetime = 0
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
        image_index = 3
        instance_create((x + 18), (y + 23), oTorizoStatuePiece2)
    }
    if (statetime == 60)
    {
        state = 5
        statetime = 0
    }
}
if (state == 5)
{
    if (statetime == 0)
    {
        image_index = 4
        instance_create((x + 15), (y + 10), oTorizoStatuePiece3)
    }
    if (statetime == 60)
    {
        state = 6
        statetime = 0
    }
}
if (state == 6)
{
    if (statetime == 0)
    {
        image_index = 5
        instance_create((x + 9), (y + 24), oTorizoStatuePiece4)
    }
    if (statetime == 60)
    {
        state = 7
        statetime = 0
        event_user(1)
    }
}
if (state == 7)
{
    if (image_index < 8)
        image_index += 0.2
    if (statetime > 60)
    {
    }
}
statetime += 1
