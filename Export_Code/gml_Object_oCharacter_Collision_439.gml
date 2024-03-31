if (other.sax != global.sax && state != IDLE && state != SAVING && state != SAVINGFX && state != SAVINGSHIPFX && state != SAVINGSHIP && state != ELEVATOR && state != GFELEVATOR)
{
    event_user(2)
    if (!global.spectator)
        global.showHealthIndicatorsTimer = 900
    global.otherID = other.myid
    if instance_exists(oClient)
    {
        with (oClient)
            event_user(2)
    }
}
