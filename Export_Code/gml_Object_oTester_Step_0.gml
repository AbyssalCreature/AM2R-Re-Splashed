if (eye.myhealth < 0)
    state = 100
aim_x = oCharacter.x
aim_y = oCharacter.y
if (state == 0)
{
    if (statetime == 60)
    {
        with (oA4TileLight1)
            color = 1
        sfx_play(sndTesterStartup)
    }
    if (statetime > 60)
    {
        if (eye.shutter_frame < 4)
            eye.shutter_frame += 0.25
    }
    if (statetime == 120)
    {
        enableforcefield = 1
        glass.enabled = 1
        sfx_play(sndTesterBarrierUp)
    }
    if (statetime == 150)
    {
        if file_exists("musTester.ogg")
        {
            mus_play(musTester)
            oMusicV2.bossbgm = 369
        }
        else
        {
            mus_play(musAncientGuardian)
            oMusicV2.bossbgm = 263
        }
    }
    if (statetime == 240)
    {
        state = 1
        statetime = 0
        eye.canbehit = 1
        scan_log(35, get_text("ScanEvents", "ScanMechanism"), 180, 0)
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        x = round(x)
        y = round(y)
        targetx = 160
        if (y >= 480)
            targety = 100
        else
            targety = 860
        target_soff = 0
        target_coff = 0
        target_angle = 0
        rot_speed = 5
        sangle_timer = 60
        if (instance_number(oTesterShield) == 4)
            change_time = 360
        if (instance_number(oTesterShield) == 3)
            change_time = 300
        if (instance_number(oTesterShield) == 2)
            change_time = 240
        if (instance_number(oTesterShield) == 1)
            change_time = 180
        if (instance_number(oTesterShield) == 0)
            change_time = 120
    }
    if (y <= 120)
        targety = 860
    if (y >= 840)
        targety = 100
    if (instance_number(oTesterShield) == 4)
        movespeed = 1
    if (instance_number(oTesterShield) == 3)
        movespeed = 1.5
    if (instance_number(oTesterShield) == 2)
        movespeed = 2
    if (instance_number(oTesterShield) == 1)
        movespeed = 2.5
    if (instance_number(oTesterShield) == 0)
        movespeed = 3
    if (point_distance(x, y, oCharacter.x, oCharacter.y) > 220)
        movespeed = 1
    if (statetime > 60 && statetime < 260)
    {
        if (sangle_timer > 0)
            sangle_timer -= 1
        else
        {
            starget_angle = (floor(random_range(0, 3.9)) * 90)
            sangle_timer = 120
            sfx_play(sndTesterRotate)
        }
    }
    if (statetime >= change_time)
    {
        if (attacks == 0)
        {
            if (instance_number(oTesterShield) == 4)
                next_attack = 7
            else
                next_attack = 2
        }
        if (attacks == 1 || attacks == 3)
            next_attack = choose(3, 4, 5, 6)
        if (attacks == 2)
            next_attack = 2
        attacks += 1
        if (attacks > 3)
            attacks = 0
        state = next_attack
        statetime = 0
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        targetx = 160
        targety = y
        movespeed = 0
        target_soff = soffmax
        target_coff = coffmax
        rot_speed = 5
        with (oTesterCannon)
        {
            type = 0
            event_user(2)
        }
        sfx_play(sndTesterCannonArm)
    }
    if (statetime == 50)
    {
        with (oTesterCannon)
            open = 1
    }
    if (statetime == 60)
        target_angle = 45
    if (statetime == 70)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 90)
        target_angle = 90
    if (statetime == 100)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 110)
        target_angle = 45
    if (statetime == 120)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 130)
    {
        with (oTesterCannon)
            open = 0
    }
    if (statetime == 200)
    {
        state = 1
        statetime = -1
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        targetx = 100
        targety = 120
        movespeed = 5
        target_soff = soffmax
        target_coff = coffmax
        target_angle = 180
        rot_speed = 5
        with (oTesterCannon)
        {
            type = 1
            event_user(2)
        }
        sfx_play(sndTesterCannonArm)
    }
    if (statetime == 100)
    {
        with (oTesterCannon)
            open = 1
    }
    if (statetime == 130)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 190)
    {
        targetx = 125
        targety = 300
        target_angle = 270
    }
    if (statetime == 250)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 280)
    {
        targetx = 160
        targety = 480
        target_angle = 180
    }
    if (statetime == 340)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 370)
    {
        targetx = 195
        targety = 660
        target_angle = 90
    }
    if (statetime == 430)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 460)
    {
        targetx = 220
        targety = 840
        target_angle = 0
    }
    if (statetime == 520)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 550)
    {
        with (oTesterCannon)
            open = 0
    }
    if (statetime == 610)
    {
        state = 1
        statetime = -1
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
        targetx = 160
        targety = 480
        movespeed = 5
        target_soff = soffmax
        target_coff = coffmax
        target_angle = 45
        rot_speed = 5
        with (oTesterCannon)
        {
            type = 2
            event_user(2)
        }
        sfx_play(sndTesterCannonArm)
    }
    if (statetime == 60)
    {
        with (oTesterCannon)
            open = 1
    }
    if (statetime == 100)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 400)
    {
        with (oTesterCannon)
            open = 0
    }
    if (statetime == 460)
    {
        state = 1
        statetime = -1
    }
}
if (state == 5)
{
    if (statetime == 0)
    {
        targetx = 160
        targety = y
        movespeed = 0
        target_soff = soffmax
        target_coff = coffmax
        target_angle = 0
        rot_speed = 5
        with (oTesterCannon)
        {
            type = 3
            event_user(2)
        }
        sfx_play(sndTesterCannonArm)
    }
    if (statetime == 50)
    {
        with (oTesterCannon)
            open = 1
    }
    if (statetime == 100)
    {
        with (oTesterCannon)
            event_user(0)
    }
    if (statetime == 130)
    {
        target_angle = -45
        rot_speed = 0.5
    }
    if (statetime == 210)
    {
        target_angle = 45
        rot_speed = 0.5
    }
    if (statetime == 390)
    {
        with (oTesterCannon)
            open = 0
    }
    if (statetime == 450)
    {
        state = 1
        statetime = -1
    }
}
if (state == 6)
{
    if (statetime == 0)
    {
        targetx = 160
        targety = y
        if (y > 736)
            targety = 736
        if (y < 224)
            targety = 224
        movespeed = 4
        target_soff = soffmax
        target_coff = coffmax
        target_angle = 0
        rot_speed = 5
        with (oTesterCannon)
        {
            type = 4
            event_user(2)
        }
        sfx_play(sndTesterCannonArm)
    }
    if (statetime == 50)
    {
        with (oTesterCannon)
            open = 1
    }
    if (statetime == 100)
    {
        with (oTesterCannon)
            event_user(0)
        sfx_loop(sndTesterPlasmaLoop)
    }
    if (statetime == 130)
    {
        target_angle = 360
        rot_speed = 0.5
    }
    if (statetime == 850)
    {
        with (oTesterPlasmaBeam)
            fadeout = 1
        sfx_stop(sndTesterPlasmaLoop)
    }
    if (statetime == 870)
    {
        with (oTesterCannon)
            open = 0
    }
    if (instance_number(oTesterPlasmaBeam) == 0 && sfx_isplaying(sndTesterPlasmaLoop))
        sfx_stop(sndTesterPlasmaLoop)
    if (statetime == 930)
    {
        state = 1
        statetime = -1
        image_angle = 0
        target_angle = 0
    }
}
if (state == 7)
{
    if (statetime == 0)
    {
        movetotarget = 0
        target_soff = 35
        shuriken = 1
        target_angle = 0
        rot_speed = 0
        sfx_play(sndTesterRotate)
    }
    if (statetime == 50)
    {
        directrotate = 1
        sfx_loop(sndTesterMeleeLoop)
    }
    if (statetime == 100)
    {
        direction = point_direction(x, y, aim_x, aim_y)
        speed = 4
    }
    if (x > wall_r && hspeed > 0)
        hspeed *= -1
    if (x < wall_l && hspeed < 0)
        hspeed *= -1
    if (y > wall_d && vspeed > 0)
        vspeed *= -1
    if (y < wall_u && vspeed < 0)
        vspeed *= -1
    if (statetime == 600)
    {
        speed = 0
        target_soff = 0
        directrotate = 0
        sfx_stop(sndTesterMeleeLoop)
    }
    if (statetime == 660)
    {
        state = 1
        statetime = -1
        image_angle = 0
        target_angle = 0
        shuriken = 0
        movetotarget = 1
        targetx = 160
        targety = 480
    }
}
if (state == 100)
{
    if (statetime == 0)
    {
        movespeed = 0
        movetotarget = 0
        directrotate = 0
        rot_speed = 0
        speed = 0
        sfx_stop(sndTesterMeleeLoop)
        with (oTesterCannon)
            open = 0
        with (oTesterPlasmaBeam)
            fadeout = 1
        with (oTesterGlass)
            instance_destroy()
        with (oTesterMissile)
            event_user(0)
        with (oTesterSpazerBeam)
            event_user(0)
        with (oTesterIceBeam)
            event_user(0)
        with (oTesterWaveBeam)
            event_user(0)
        with (oA4TileLight1)
            color = 0
        with (cam)
            instance_destroy()
        sfx_stop(sndTesterPlasmaLoop)
        sfx_play(sndTesterDeath)
        mus_fadeout(musTester)
        mus_fadeout(musAncientGuardian)
        oMusicV2.bossbgm = 0
    }
    if (statetime == 200)
    {
        sfx_stop(sndTesterMeleeLoop)
        repeat (20)
        {
            expl = instance_create((x + random_range(-45, 45)), (y + random_range(-45, 45)), oFXAnimSpark)
            expl.image_speed = (0.3 + random(0.5))
            expl.additive = 0
            expl.sprite_index = sExpl1Big
        }
        make_explosion3(x, (y - 40))
        repeat (20)
            instance_create(x, (y - 50), oDebris)
        repeat (30)
            instance_create(x, (y - 50), oMetalDebrisBig)
        instance_create(x, y, oScreenFlash)
        sfx_play(sndRobotExpl)
        sfx_play(sndMissileExpl)
        spawn_many_powerups((x - 64), (y - 64), 128, 128)
        with (oDoor)
            event_user(3)
        with (oTesterCannon)
            instance_destroy()
        with (oTesterShield)
            instance_destroy()
        with (oTesterEye)
            instance_destroy()
        global.event[200] = 2
        mus_current_fadein()
        instance_destroy()
    }
}
if movetotarget
{
    if (x < targetx)
        x += 1
    if (x > targetx)
        x -= 1
    if (y < targety)
        y += movespeed
    if (y > targety)
        y -= movespeed
}
if (soffset < target_soff)
    soffset += 1
if (soffset > target_soff)
    soffset -= 1
if (coffset < target_coff)
    coffset += 2
if (coffset > target_coff)
    coffset -= 2
if (image_angle > target_angle)
    image_angle -= rot_speed
if (image_angle < target_angle)
    image_angle += rot_speed
if directrotate
{
    sangle -= 20
    if (sangle < 0)
        sangle += 360
}
else
{
    if (sangle > starget_angle)
        sangle -= srot_speed
    if (sangle < starget_angle)
        sangle += srot_speed
}
if (state != 100)
{
    if (instance_number(oTesterShield) < 4 && enableforcefield == 0)
    {
        enableforcefield = 1
        glass.enabled = 1
    }
    if (glass.enabled == 1)
        eye.canbehit = 0
    else
        eye.canbehit = 1
}
if (flashing > 0)
    flashing -= 1
statetime += 1
