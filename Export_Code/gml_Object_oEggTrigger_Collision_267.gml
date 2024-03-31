var scan, ecam;
if (active == 0)
{
    mus_stop_all()
    mus_play_once(musArea7B)
    if (oControl.mod_monstersextremecheck == 1)
        oControl.mod_monstersextreme = 1
    alarm[0] = 300
    global.event[302] = 1
    if (!instance_exists(oScanMonster))
    {
        scan = instance_create(0, 0, oScanMonster)
        scan.ammount = 9
        if (global.difficulty == 2)
            scan.ammount = 16
        if (oControl.mod_fusion == 1)
            scan.ammount = 21
        if (oControl.mod_monstersextreme == 1)
            scan.ammount = 47
        scan.eventno = 700
        scan.alarm[0] = 120
    }
    ecam = instance_create(x, (y - 16), oEventCamera)
    ecam.targetx = 160
    ecam.targety = 120
    ecam.ratio = 8
    ecam.alarm[0] = 300
    view_object[0] = oEventCamera
    active = 1
}
