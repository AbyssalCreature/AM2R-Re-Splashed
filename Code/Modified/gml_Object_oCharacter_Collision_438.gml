if (other.sax != global.sax && global.playerFreeze == 0 && invincible == 0 && canbehit && state != IDLE && state != SAVING && state != SAVINGFX && state != SAVINGSHIPFX && state != SAVINGSHIP && state != ELEVATOR && state != GFELEVATOR)
{
    if other.smissile
        other.damage = 50
    else
        other.damage = 20
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
