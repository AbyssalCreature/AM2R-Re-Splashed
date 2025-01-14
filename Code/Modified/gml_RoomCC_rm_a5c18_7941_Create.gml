if (oControl.mod_randomgamebool == 1)
{
    if instance_exists(oMalpha3TriggerProx)
    {
        ystart = -32
        y = -32
    }
    if (oControl.mod_septoggs_bombjumps_easy == 0 && global.item[0] == 1)
        xstart = -500
    else if scr_septoggs_267()
        xstart = -500
}
else
    xstart = -500
