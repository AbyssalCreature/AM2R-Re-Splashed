if (canbehit && myhealth > 0)
{
    if other.smissile
        myhealth -= 40
    else
        myhealth -= 10
    event_user(0)
    with (other.id)
        event_user(0)
}
