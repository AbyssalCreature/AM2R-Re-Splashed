if (oControl.mod_randomgamebool == 1 && oControl.mod_previous_room == 136)
{
    if (oControl.mod_septoggs_bombjumps_easy == 0 && global.item[0] == 1)
        xstart = -500
    else if (scr_septoggs_246() || instance_exists(oMGammaTriggerProx))
        xstart = -500
}
else
    xstart = -500
