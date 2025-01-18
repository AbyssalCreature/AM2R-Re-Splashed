if (global.transitiontype == 0)
{
    if (fade < 1)
        fade += 0.1
    else
        event_user(0)
}
if (global.transitiontype == 1)
{
    if (fade < 1)
        fade += 0.1
    else if (moveplayer < 30)
    {
        with (oCharacter)
        {
            x -= ((x - global.transitionx) / 10)
            y -= ((y - global.transitiony) / 10)
        }
        moveplayer += 1
    }
    else
        event_user(0)
}
