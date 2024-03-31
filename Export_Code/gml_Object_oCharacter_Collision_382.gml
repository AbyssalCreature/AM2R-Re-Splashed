if (other.sax != global.sax && other.myid != global.clientID)
{
    event_user(4)
    if (!global.spectator)
        global.showHealthIndicatorsTimer = 900
    global.otherID = other.myid
    if instance_exists(oClient)
    {
        with (oClient)
            event_user(2)
    }
}
