if (other.sax != global.sax && invincible == 0 && canbehit && state != IDLE && state != SAVING && state != SAVINGFX && state != SAVINGSHIPFX && state != SAVINGSHIP && state != ELEVATOR && state != GFELEVATOR)
{
    pbomb_drain = 2
    if (!global.spectator)
        global.showHealthIndicatorsTimer = 900
    global.otherID = other.myid
    if instance_exists(oClient)
    {
        with (oClient)
            event_user(2)
    }
}
