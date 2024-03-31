if (global.event[303] > 0)
    instance_destroy()
else
{
    canbeX = 0
    damage = global.mod_queenDbody
    head_obj = instance_create((x + 250), (y - 10), oQueenHead)
    front_obj = instance_create(x, y, oQueenFront)
    flashing = 0
    fxtimer = 0
    targetx = x
    phase = 0
    canhit = 1
    maxspeed = 2
    phasetargetx[0] = 600
    phasetargetx[1] = 928
    phasetargetx[2] = 1568
    phasetargetx[3] = 1888
    phasetargetx[4] = 2528
    phasetargetx[5] = 2528
    camx = x
    camy = y
    neck_x = x
    neck_y = y
    belly_x = x
    belly_y = y
    leg1f_x = lengthdir_x(129, (image_angle + 15))
    leg1f_y = lengthdir_y(129, (image_angle + 15))
    leg1f_obj = instance_create(((x + leg1f_x) + 13), ((y + leg1f_y) + 69), oQueenLegFront)
    leg2f_obj = instance_create(((x + leg1f_x) + 13), ((y + leg1f_y) + 69), oQueenLegBack)
    with (leg2f_obj)
        x += 40
    leg1b_x = lengthdir_x(37, (image_angle + 43))
    leg1b_y = lengthdir_y(37, (image_angle + 43))
    leg1b_obj = instance_create(((x + leg1b_x) + 13), ((y + leg1b_y) + 61), oQueenLegFront)
    with (leg1b_obj)
    {
        spr_foot = 655
        spr_leg1 = 664
        spr_leg2 = 665
        spr_leg3 = 666
        spr_leg4 = 667
        joint1_len = 45
        x += 40
    }
    leg2b_obj = instance_create(((x + leg1b_x) + 13), ((y + leg1b_y) + 61), oQueenLegBack)
    with (leg2b_obj)
        spr_foot = 662
    col_back = 0
    col_front = 0
    col_front_x = (x + 130)
    col_front_y = y
    head_target_x = (x + 120)
    head_target_y = (y - 10)
    head_target_angle = 0
    head_target_snap = 1
    height_target_front = 35
    height_target_back = 35
    height_front = 35
    height_back = 35
    sin_timer = 0
    state = 0
    statetime = 0
    head_attacks = 0
    mus_stop_all()
    with (oMusicV2)
        alarm[5] = 600
    if (!sfx_isplaying(musQueenIntro))
        mus_play_once(musQueenIntro)
    scan_log(16, get_text("ScanEvents", "ScanBioform"), 120, 0)
    widescreen_space = oControl.widescreen_space
}
