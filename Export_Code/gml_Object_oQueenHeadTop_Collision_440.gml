if (oQueen.state != 100)
{
    if canbehit
    {
        if (other.smissile == 0)
        {
            with (oQueenHead)
                event_user(1)
        }
        else
        {
            with (oQueenHead)
                event_user(2)
        }
        with (other.id)
            event_user(0)
    }
    else
    {
        with (other.id)
            event_user(1)
    }
}
