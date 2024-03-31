var neck_dist, neck_seglen, neck_basedir, i;
if (state == 0)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 0
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 30
        sfx_play(sndQueenIntro)
    }
    if (statetime == 180)
        jaw_target_angle = 0
    if (statetime == 240)
    {
        state = 0
        statetime = -1
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 30
        stunned = 0
        numproj = 3
        projdelay = 20
        if (myhealth <= ((starthealth / 4) * 3))
        {
            numproj = 4
            projdelay = 15
        }
        if (myhealth <= ((starthealth / 4) * 2))
        {
            numproj = 5
            projdelay = 12
        }
        if (myhealth <= (starthealth / 4))
        {
            numproj = 6
            projdelay = 10
        }
    }
    if (statetime == 40)
        alarm[0] = 1
    if (statetime == 180)
        jaw_target_angle = 0
    if (statetime == 200)
    {
        state = 0
        statetime = -1
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 30
        stunned = 0
        canbehit = 0
        alarm[1] = 60
    }
    if (statetime > 60 && statetime < 120)
    {
        if (jawglowalpha < 1)
            jawglowalpha += 0.01
    }
    if (statetime == 70)
        sfx_play(sndQueenCharge)
    if (statetime == 300)
    {
        proj = instance_create((x + 20), (y + 10), oQueenFireball)
        sfx_play(sndQueenBigFire)
        if oMusicV2.useMultistageMusic
        {
            switch oQueen.phase
            {
                case 0:
                    with (oMusicV2)
                        alarm[6] = 5
                    break
                case 2:
                    with (oMusicV2)
                        alarm[7] = 5
                    break
            }

        }
        switch oQueen.phase
        {
            case 1:
                proj.targetx = 880
                proj.targety = 120
                break
            case 2:
                proj.targetx = 1200
                proj.targety = 112
                break
            case 3:
                proj.targetx = 1840
                proj.targety = 112
                break
            case 4:
                proj.targetx = 2160
                proj.targety = 160
                break
        }

    }
    if (statetime > 300)
    {
        if (jawglowalpha > 0)
            jawglowalpha -= 0.05
    }
    if (statetime == 320)
        jaw_target_angle = 0
    if (statetime == 360)
    {
        canbehit = 1
        state = 0
        statetime = -1
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 10
        sfx_play(sndQueenRoarShort)
    }
    if (statetime == 50)
        jaw_target_angle = 0
    if (statetime < (attackdelay * 0.8))
    {
        head_target_angle = point_direction(x, y, oCharacter.x, (oCharacter.y - 32))
        if (oQueen.phase == 1 || oQueen.phase == 2)
            head_target_angle = 0
    }
    if (statetime == attackdelay)
    {
        state = 5
        statetime = 0
    }
}
if (state == 5)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 0
        direction = image_angle
        speed = 3
        sfx_play(sndQueenAttack)
    }
    if (speed < 8)
        speed += (0.5 * speedmulti)
    if (collision_line(x, y, (x + lengthdir_x(74, (image_angle - 12))), (y + lengthdir_y(74, (image_angle - 12))), oSolid, true, true) > 0)
    {
        state = 0
        statetime = -1
        screen_shake(10, 4)
        speed = 0
        sfx_play(sndQueenImpact)
    }
    if (statetime == 200)
    {
        state = 0
        statetime = -1
    }
}
if (state == 6)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 0
        stunned = 0
        alarm[2] = 75
    }
    if (statetime == 60)
        jaw_target_angle = 30
    if (statetime < 75)
        head_target_angle = -60
    if (statetime == 75)
        sfx_play(sndMZetaAcid)
    if (statetime >= 75 && statetime < 135)
        head_target_angle = (-60 + (statetime - 75))
    if (statetime == 150)
    {
        state = 0
        statetime = -1
    }
}
if (state == 10)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 25
        jaw1_obj.canhit = 0
        jaw2_obj.canhit = 0
        grab_obj = instance_create((x + 65), (y - 30), oQueenGrab)
    }
    if (oCharacter.state == 53 || oCharacter.state == 54)
    {
        oCharacter.x = (x + player_x)
        oCharacter.y = (y + player_y)
        jaws_shake = 1
        head_target_angle = -3
    }
    if (oCharacter.state == 54)
    {
        jaw_target_angle = 5
        head_target_angle = 3
    }
    if (oCharacter.state == 55)
    {
        jaw_target_angle = 2
        head_target_angle = 8
        jaws_shake = 0
    }
}
if (state == 11)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 0
        jaw1_obj.canhit = 0
        jaw2_obj.canhit = 0
        canhit = 0
        jaws_shake = 0
        with (oCharacter)
        {
            state = 39
            statetime = 0
            xVel = 5
            image_index = 0
            statetime = 0
            sfx_play(sndHurt)
            invincible = 30
            ctrl_vibrate(1, 1, 15)
            queen_drain = 0
            if (global.currentsuit == 0)
                global.playerhealth -= (400 * oControl.mod_diffmult)
            if (global.currentsuit == 1)
                global.playerhealth -= (ceil(200) * oControl.mod_diffmult)
            if (global.currentsuit == 2)
            {
                if (global.inventory[5] == 0)
                    global.playerhealth -= (ceil(200) * oControl.mod_diffmult)
                else
                    global.playerhealth -= (ceil(100) * oControl.mod_diffmult)
            }
            if (global.playerhealth <= 0 && state != DEFEATED)
            {
                alarm[0] = 6
                state = DEFEATED
            }
        }
        sfx_play(sndGFTrooperHit)
    }
    if (statetime == 120)
    {
        state = 0
        statetime = -1
    }
}
if (state == 50)
{
    if (statetime == 0)
    {
        head_frame = 0
        head_target_angle = 0
        jaw_target_angle = 0
        ujaw_angle = 0
        ljaw_angle = 0
        sfx_play(sndQueenHit2)
        stunned = 30
        speed = 0
        bld = instance_create((x + 42), (y - 8), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = -1
        bld.depth = -100
        bld = instance_create((x + 60), (y + 8), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = -1
        bld.image_yscale = -1
        bld.depth = -100
    }
    if (statetime == 50)
    {
        state = 0
        statetime = -1
    }
}
if (state == 100)
{
    if (statetime == 0)
    {
        head_frame = 0
        jaw_target_angle = 10
        image_angle = 20
        oCharacter.queen_drain = 0
        if instance_exists(grab_obj)
        {
            with (grab_obj)
                instance_destroy()
        }
    }
    if (image_angle > -20)
        image_angle -= 0.5
}
if (eyes_close > 0)
    eyes_close -= 1
if (eyes_close == 0)
{
    if (eyes_frame > -1)
        eyes_frame -= 0.25
}
else if (eyes_frame < 5)
    eyes_frame += 1
neck_base_x = (oQueen.x + oQueen.neck_x)
neck_base_y = (oQueen.y + oQueen.neck_y)
neck_dist = point_distance(neck_base_x, neck_base_y, x, y)
neck_seglen = (neck_dist / neck_segments)
neck_basedir = point_direction(neck_base_x, neck_base_y, x, y)
neck_x[0] = (neck_base_x + lengthdir_x(neck_seglen, neck_basedir))
neck_y[0] = (neck_base_y + lengthdir_y(neck_seglen, neck_basedir))
neck_yoff[0] = (sin((pi - (neck_dist / (neck_dist - (neck_seglen * -1))))) * 20)
i = 1
repeat (neck_segments - 1)
{
    neck_x[i] = (neck_x[(i - 1)] + lengthdir_x(neck_seglen, neck_basedir))
    neck_y[i] = (neck_y[(i - 1)] + lengthdir_y(neck_seglen, neck_basedir))
    neck_yoff[i] = (sin((pi - (neck_dist / (neck_dist - (neck_seglen * (i - 1)))))) * 20)
    i += 1
}
if (ujaw_angle != jaw_target_angle)
{
    ujaw_angle = lerp(ujaw_angle, jaw_target_angle, 0.1)
    ljaw_angle = lerp(ljaw_angle, (-jaw_target_angle), 0.1)
}
if (head_target_angle > 180)
    head_target_angle -= 360
if (image_angle != head_target_angle)
    image_angle = lerp(image_angle, head_target_angle, 0.1)
if (stunned > 0)
{
    if (stunned > 25 && stunned <= 30)
        head_frame = 1
    if (stunned > 12 && stunned <= 25)
        head_frame = 2
    if (stunned <= 12)
        head_frame = 1
}
else
    head_frame = 0
statetime += 1
if (flashing > 0)
    flashing -= 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (shaking > 0)
    shaking -= 1
if (stunned > 0)
    stunned -= 1
glowfx += 1
if (glowfx > 10)
    glowfx = 0
if (canbehit == 0)
{
    if (glowalpha < 1)
        glowalpha += 0.1
}
else if (glowalpha > 0)
    glowalpha -= 0.05
