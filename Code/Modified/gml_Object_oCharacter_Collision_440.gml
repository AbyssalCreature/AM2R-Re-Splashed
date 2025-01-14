if (other.sax != global.sax && state != IDLE && state != SAVING && state != SAVINGFX && state != SAVINGSHIPFX && state != SAVINGSHIP && state != ELEVATOR && state != GFELEVATOR)
{
    if other.smissile
        other.damage = 50
    if (global.playerFreeze > 0)
        other.damage *= 0.8
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
