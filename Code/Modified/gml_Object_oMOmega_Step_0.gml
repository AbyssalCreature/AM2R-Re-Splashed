var slash_dist, msl, tl;
slash_dist = 130
if (target_mode == 0)
{
    targetx = oCharacter.x
    targety = oCharacter.y
}
else if (target_mode == 1)
{
    targetx = targetx2
    targety = y
}
if (target_mode == 0 && ((facing == 1 && x > limit_right) || (facing == -1 && x < limit_left)))
    target_mode = 1
image_xscale = facing
if (isCollisionBottom(1) == 0)
    yVel += 0.2
else if (yVel > 0)
    yVel = 0
if (state == 0)
{
    body_frame = 0
    head_frame = 0
    fleg_spr = sMOmega_FLeg
    bleg_spr = 613
    farm_spr = sMOmega_FArm
    barm_spr = 612
    head_spr = omega_head
    bleg_frame = 0
    fleg_frame = 0
    farm_frame = 0
    barm_frame = 0
    yoff = 0
    head_follow = 1
    if (point_distance(x, y, oCharacter.x, y) < (160 + (oControl.widescreen_space / 2)))
        event_user(1)
    if instance_exists(oMissile)
    {
        msl = instance_nearest(x, y, oMissile)
        if (distance_to_object(msl) < 60)
            event_user(1)
    }
    if instance_exists(oBeam)
    {
        msl = instance_nearest(x, y, oBeam)
        if (distance_to_object(msl) < 60)
            event_user(1)
    }
    if (statetime == 520 || statetime == 1200)
        eyes_close = 15
}
if (state == 1)
{
    if (statetime == 0)
    {
        body_target_angle = -10
        fleg_spr = sMOmega_FLeg_Walk
        bleg_spr = 616
        farm_spr = sMOmega_FArm
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 0
        head_follow = 1
        head_frame = 0
    }
    if ((targetx < x && facing == 1) || (targetx >= x && facing == -1 && statetime == 40))
    {
        state = 2
        statetime = 0
    }
    if ((facing == 1 && isCollisionRight(50) == 0) || (facing == -1 && isCollisionLeft(50) == 0))
    {
        if (statetime == 3)
            x += (3 * facing)
        if (statetime == 5)
            x += (3 * facing)
        if (statetime == 8)
            x += (3 * facing)
        if (statetime == 11)
            x += (3 * facing)
        if (statetime == 13)
            x += (3 * facing)
        if (statetime == 15)
            x += (3 * facing)
        if (statetime == 18)
            x += (3 * facing)
        if (statetime == 20)
            x += (4 * facing)
        if (statetime == 23)
            x += (4 * facing)
        if (statetime == 25)
            x += (4 * facing)
        if (statetime == 28)
            x += (4 * facing)
        if (statetime == 30)
            x += (4 * facing)
        if (statetime == 32)
            x += (2 * facing)
        if (statetime == 36)
            x += (2 * facing)
        if (statetime == 44)
            x += (2 * facing)
    }
    if ((fleg_frame >= 3 && fleg_frame < 3.25) || (fleg_frame >= 14 && fleg_frame < 14.25))
    {
        sfx_play(sndMZetaFootstep)
        screen_shake(5, 2)
        farm_frame = 3
    }
    if (farm_frame > 0)
        farm_frame -= 0.25
    barm_frame = farm_frame
    fleg_frame = anim_frame_cycle(fleg_spr, fleg_frame, 0.4)
    if (fleg_frame < 13)
        bleg_frame = fleg_frame
    switch floor(fleg_frame)
    {
        case 0:
            yoff = 0
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            break
        case 1:
            yoff = -1
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            break
        case 2:
            yoff = -2
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            break
        case 3:
        case 4:
            yoff = -3
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            break
        case 5:
            yoff = -2
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            break
        case 6:
            yoff = -1
            head_yoff = 1
            farm_frame = 1
            barm_frame = 1
            break
        case 7:
            yoff = 0
            head_yoff = 2
            farm_frame = 2
            barm_frame = 2
            break
        case 8:
            yoff = -1
            head_yoff = 2
            farm_frame = 2
            barm_frame = 2
            break
        case 9:
            yoff = -2
            head_yoff = 1
            farm_frame = 1
            barm_frame = 1
            break
        case 10:
            yoff = -3
            head_yoff = 1
            farm_frame = 1
            barm_frame = 1
            break
        case 11:
            yoff = -2
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            break
        case 12:
            yoff = -1
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            break
        case 13:
            bleg_spr = 613
            bleg_frame = 0
            bleg_xoff = 8
            yoff = 0
            head_yoff = 0
            break
        case 14:
            yoff = 0
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            bleg_xoff = 6
            break
        case 15:
            yoff = 0
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            bleg_xoff = 4
            break
        case 16:
            yoff = 0
            head_yoff = 0
            farm_frame = 0
            barm_frame = 0
            bleg_xoff = 2
            break
        case 17:
            yoff = 0
            head_yoff = 1
            farm_frame = 1
            barm_frame = 1
            bleg_xoff = 0
            break
    }

    if (statetime == 43)
    {
        state = choose(3, 6, 7, 20, 20)
        if (laststate == 1)
            state = choose(3, 7, 20, 20)
        statetime = 0
        if (state == 7 && point_distance(x, y, oCharacter.x, y) > 280)
            state = 3
        if (oCharacter.y > y && point_distance(x, y, oCharacter.x, y) < slash_dist && ((oCharacter.x > x && facing == 1) || (oCharacter.x < x && facing == -1)))
            state = 10
        if (target_mode == 1)
        {
            if ((facing == -1 && x < (room_width / 2)) || (facing == 1 && x >= (room_width / 2)))
                state = 2
            else
                state = 7
        }
        if (oCharacter.y < (y - 48) && oCharacter.state == 27 && abs((oCharacter.x - x)) <= 144 && oCharacter.x > 64 && oCharacter.x < (room_width - 64))
        {
            if (abs((oCharacter.x - x)) <= 48)
            {
                state = 7
                statetime = 0
            }
            else if (sign((oCharacter.x - x)) == facing)
            {
                state = 11
                statetime = 0
            }
            else
            {
                state = 2
                statetime = 0
            }
        }
        if (state == 6)
            laststate = 1
        else
            laststate = 0
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = 0
        head_target_angle = 0
        yoff = 0
        head_yoff = 0
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        head_follow = 0
        sfx_play(sndMOmegaBreathe)
    }
    if (statetime > 0)
    {
        if (head_frame < 2.5)
            head_frame += 0.25
    }
    if (statetime == 10)
    {
        body_spr = sMOmega_Body_Turn
        fleg_spr = -4
        bleg_spr = -4
        farm_spr = -4
        barm_spr = -4
        head_xoff = -20
    }
    if (statetime == 14)
        facing *= -1
    if (statetime >= 18)
    {
        body_spr = omega_body
        farm_spr = sMOmega_FArm
        barm_spr = 612
        fleg_spr = sMOmega_FLeg
        bleg_spr = 613
        head_xoff = 0
        if (head_frame > 0)
            head_frame -= 0.25
    }
    if (statetime == 22)
    {
        if (random(1) < 0.5)
        {
            state = 1
            statetime = -1
        }
        else
        {
            state = 20
            statetime = 0
        }
        if (oCharacter.y > y && point_distance(x, y, oCharacter.x, y) < slash_dist && ((oCharacter.x > x && facing == 1) || (oCharacter.x < x && facing == -1)))
        {
            state = 10
            statetime = 0
        }
        else if (oCharacter.y < (y - 48) && oCharacter.state == 27 && abs((oCharacter.x - x)) <= 144)
        {
            if (abs((oCharacter.x - x)) <= 48)
            {
                state = 7
                statetime = -1
            }
            else
            {
                state = 11
                statetime = -1
            }
        }
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        body_frame = 0
        head_frame = 0
        body_target_angle = -35
        fleg_spr = sMOmega_FLeg_Crouch
        bleg_spr = 614
        farm_spr = sMOmega_FArm
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_follow = 1
        xVel = 0
        yVel = 0
        sfx_play(sndMOmegaAttack)
        roaring = 60
    }
    fleg_frame = anim_frame(fleg_spr, fleg_frame, 0.5)
    bleg_frame = fleg_frame
    farm_frame = anim_frame(farm_spr, farm_frame, 0.5)
    barm_frame = farm_frame
    if (floor(fleg_frame) == 0)
        yoff = 0
    if (floor(fleg_frame) == 1)
        yoff = 2
    if (floor(fleg_frame) == 2)
        yoff = 4
    if (floor(fleg_frame) == 3)
        yoff = 6
    if (floor(fleg_frame) == 4)
        yoff = 8
    if (floor(fleg_frame) == 5)
        yoff = 10
    if (floor(fleg_frame) == 6)
        yoff = 12
    if (floor(fleg_frame) == 7)
        yoff = 14
    if (floor(fleg_frame) == 8)
        yoff = 16
    if (floor(fleg_frame) == 9)
        yoff = 18
    if (statetime == 40)
    {
        state = 4
        statetime = 0
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
        body_frame = 0
        head_frame = 0
        body_target_angle = -30
        fleg_spr = sMOmega_FLeg_Jump
        bleg_spr = 615
        farm_spr = sMOmega_FArm
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_follow = 1
        yVel = -2
        xVel = (6 * facing)
        sfx_play(sndMZetaJump)
        grab_obj = instance_create(x, y, oMOmegaGrab)
    }
    fleg_frame = anim_frame(fleg_spr, fleg_frame, 0.5)
    bleg_frame = fleg_frame
    if (isCollisionBottom(1) > 0 && statetime > 10)
    {
        state = 5
        statetime = 0
        with (grab_obj)
            instance_destroy()
    }
    if ((xVel > 0 && isCollisionRight(80)) || (xVel < 0 && isCollisionLeft(80)))
        xVel = 0
}
if (state == 5)
{
    if (statetime == 0)
    {
        body_frame = 0
        head_frame = 0
        body_target_angle = -35
        fleg_spr = sMOmega_FLeg_Crouch
        bleg_spr = 614
        farm_spr = sMOmega_FArm
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 9
        fleg_frame = 9
        farm_frame = 8
        barm_frame = 8
        yoff = 0
        head_follow = 0
        head_target_angle = (-30 * facing)
        yVel = 0
        sfx_play(sndMZetaLand)
        make_smoke_explosion(x, (y + 41))
        make_smoke_explosion((x + 10), (y + 41))
        make_smoke_explosion((x - 10), (y + 41))
        screen_shake(8, 3)
        eyes_close = 15
    }
    xVel *= 0.6
    if (statetime < 10)
        body_frame = anim_frame(body_spr, body_frame, 0.5)
    if (statetime == 30 && oCharacter.state == 40 && point_distance(x, y, oCharacter.x, y) < 150 && ((facing == 1 && oCharacter.x > x) || (facing == -1 && oCharacter.x < x)))
    {
        alarm[0] = 1
        head_target_angle = (40 * facing)
        sfx_play(sndMOmegaFlame)
        roaring = 30
    }
    if (statetime >= 30)
    {
        fleg_frame = anim_frame(fleg_spr, fleg_frame, -0.5)
        bleg_frame = fleg_frame
        farm_frame = anim_frame(farm_spr, farm_frame, -0.25)
        barm_frame = farm_frame
    }
    if (statetime == 40)
        body_target_angle = 0
    if (statetime > 55)
        body_frame = anim_frame(body_spr, body_frame, -0.2)
    if (floor(fleg_frame) == 0)
        yoff = 0
    if (floor(fleg_frame) == 1)
        yoff = 2
    if (floor(fleg_frame) == 2)
        yoff = 4
    if (floor(fleg_frame) == 3)
        yoff = 6
    if (floor(fleg_frame) == 4)
        yoff = 8
    if (floor(fleg_frame) == 5)
        yoff = 10
    if (floor(fleg_frame) == 6)
        yoff = 12
    if (floor(fleg_frame) == 7)
        yoff = 14
    if (floor(fleg_frame) == 8)
        yoff = 16
    if (floor(fleg_frame) == 9)
        yoff = 18
    if (floor(body_frame) == 0)
        oMOmegaMask.image_index = 0
    if (floor(body_frame) > 0)
        oMOmegaMask.image_index = 1
    if (statetime == 70)
    {
        event_user(3)
        state = 1
        statetime = -1
        if (oCharacter.y > y && point_distance(x, y, oCharacter.x, y) < slash_dist && ((oCharacter.x > x && facing == 1) || (oCharacter.x < x && facing == -1)))
        {
            state = 10
            statetime = 0
        }
    }
}
if (state == 6)
{
    if (statetime == 0)
    {
        body_frame = 0
        head_frame = 0
        body_target_angle = -35
        fleg_spr = sMOmega_FLeg_Crouch
        bleg_spr = 614
        farm_spr = sMOmega_FArm
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_follow = 0
        head_target_angle = (-30 * facing)
        xVel = 0
        yVel = 0
        alarm[0] = 110
        sfx_play(sndMOmegaBreathe)
    }
    if (statetime < 110)
    {
        fleg_frame = anim_frame(fleg_spr, fleg_frame, 0.25)
        bleg_frame = fleg_frame
    }
    if (statetime == 110)
    {
        roaring = 60
        head_target_angle = (40 * facing)
        body_target_angle = 30
        sfx_play(sndMOmegaFlame)
    }
    if (statetime >= 110)
    {
        fleg_frame = anim_frame(fleg_spr, fleg_frame, -0.25)
        bleg_frame = fleg_frame
    }
    if (statetime == 130)
        head_target_angle = (-30 * facing)
    if (statetime == 210)
    {
        event_user(3)
        state = 1
        statetime = -1
    }
    if (floor(fleg_frame) == 0)
        yoff = 0
    if (floor(fleg_frame) == 1)
        yoff = 2
    if (floor(fleg_frame) == 2)
        yoff = 4
    if (floor(fleg_frame) == 3)
        yoff = 6
    if (floor(fleg_frame) == 4)
        yoff = 8
    if (floor(fleg_frame) == 5)
        yoff = 10
    if (floor(fleg_frame) == 6)
        yoff = 12
    if (floor(fleg_frame) == 7)
        yoff = 14
    if (floor(fleg_frame) == 8)
        yoff = 16
    if (floor(fleg_frame) == 9)
        yoff = 18
}
if (state == 7)
{
    if (statetime == 0)
    {
        body_frame = 0
        head_frame = 0
        body_target_angle = -35
        fleg_spr = sMOmega_FLeg_Crouch
        bleg_spr = 614
        farm_spr = sMOmega_FArm
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_follow = 1
        xVel = 0
        yVel = 0
    }
    fleg_frame = anim_frame(fleg_spr, fleg_frame, 0.5)
    bleg_frame = fleg_frame
    if (floor(fleg_frame) == 0)
        yoff = 0
    if (floor(fleg_frame) == 1)
        yoff = 2
    if (floor(fleg_frame) == 2)
        yoff = 4
    if (floor(fleg_frame) == 3)
        yoff = 6
    if (floor(fleg_frame) == 4)
        yoff = 8
    if (floor(fleg_frame) == 5)
        yoff = 10
    if (floor(fleg_frame) == 6)
        yoff = 12
    if (floor(fleg_frame) == 7)
        yoff = 14
    if (floor(fleg_frame) == 8)
        yoff = 16
    if (floor(fleg_frame) == 9)
        yoff = 18
    if (statetime == 30)
    {
        state = 8
        statetime = 0
    }
}
if (state == 8)
{
    if (statetime == 0)
    {
        body_frame = 0
        head_frame = 0
        body_target_angle = 30
        fleg_spr = sMOmega_FLeg_Jump
        bleg_spr = 615
        farm_spr = sMOmega_FArm
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_follow = 1
        yVel = -4.6
        xVel = (1 * facing)
        sfx_play(sndMZetaJump)
        if (target_mode == 1)
            xVel = (5 * facing)
    }
    fleg_frame = anim_frame(fleg_spr, fleg_frame, 0.5)
    bleg_frame = fleg_frame
    if (statetime > 20)
        body_target_angle -= 2
    if (statetime > 20)
        yVel += 0.5
    if (isCollisionBottom(1) > 0 && statetime > 10)
    {
        state = 5
        statetime = -1
        screen_shake(30, 5)
        instance_create(x, (y + 41), oMOmegaGroundHit)
    }
}
if (state == 10)
{
    if (statetime == 0)
    {
        body_frame = 0
        head_frame = 0
        body_target_angle = -5
        fleg_spr = sMOmega_FLeg_Crouch
        bleg_spr = 614
        farm_spr = sMOmega_FArm_Slash
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_follow = 1
        xVel = 0
        yVel = 0
        sfx_play(sndMOmegaBreathe)
    }
    if (statetime < 20)
    {
        if (fleg_frame < 3)
            fleg_frame += 0.25
        if (farm_frame < 2)
            farm_frame += 0.25
        if (farm_xoff < 10)
            farm_xoff += 0.5
    }
    if (statetime == 20)
    {
        farm_frame = 3
        farm_xoff = 0
        proj = instance_create((((x - surf_x) + farm_x) + (14 * facing)), (((y - surf_y) + farm_y) + 38), oMOmega_Projectile)
        proj.hspeed = (3.5 * facing)
        proj.image_xscale = facing
        sfx_play(sndArachnusSwipe)
    }
    if (statetime > 20)
    {
        farm_frame = anim_frame(farm_spr, farm_frame, 0.5)
        if (fleg_frame > 0)
            fleg_frame -= 0.25
    }
    if (floor(fleg_frame) == 0)
        yoff = 0
    if (floor(fleg_frame) == 1)
        yoff = 2
    if (floor(fleg_frame) == 2)
        yoff = 4
    if (floor(fleg_frame) == 3)
        yoff = 6
    if (statetime == 30)
    {
        if (random(1) < 0.5)
            state = 1
        else
            state = 6
        statetime = -1
    }
}
if (state == 11)
{
    if (statetime == 0)
    {
        body_frame = 0
        head_frame = 0
        body_target_angle = -25
        fleg_spr = sMOmega_FLeg
        bleg_spr = 613
        farm_spr = sMOmega_FArm
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_follow = 0
        head_target_angle = (-30 * facing)
        eyes_close = 15
        xVel = 0
        yVel = 0
        alarm[0] = 70
        sfx_play(sndMOmegaBreathe)
    }
    if (statetime == 60)
    {
        head_target_angle = (60 * facing)
        body_target_angle = 40
        sfx_play(sndMOmegaFlame)
        roaring = 30
    }
    if (statetime == 90)
    {
        event_user(3)
        state = 1
        statetime = -1
    }
    if (floor(fleg_frame) == 0)
        yoff = 0
    if (floor(fleg_frame) == 1)
        yoff = 2
    if (floor(fleg_frame) == 2)
        yoff = 4
    if (floor(fleg_frame) == 3)
        yoff = 6
    if (floor(fleg_frame) == 4)
        yoff = 8
    if (floor(fleg_frame) == 5)
        yoff = 10
    if (floor(fleg_frame) == 6)
        yoff = 12
    if (floor(fleg_frame) == 7)
        yoff = 14
    if (floor(fleg_frame) == 8)
        yoff = 16
    if (floor(fleg_frame) == 9)
        yoff = 18
}
if (state == 20)
{
    body_frame = 0
    head_frame = 0
    fleg_spr = sMOmega_FLeg
    bleg_spr = 613
    farm_spr = sMOmega_FArm
    barm_spr = 612
    head_spr = omega_head
    bleg_frame = 0
    fleg_frame = 0
    farm_frame = 0
    barm_frame = 0
    yoff = 0
    head_follow = 1
    if (statetime < 30)
    {
        if (oCharacter.y > y && point_distance(x, y, oCharacter.x, y) < slash_dist && ((oCharacter.x > x && facing == 1) || (oCharacter.x < x && facing == -1)))
        {
            state = 10
            statetime = -1
        }
    }
    if (statetime == 30)
    {
        if (oCharacter.y < y)
        {
            if (oCharacter.y > y && point_distance(x, y, oCharacter.x, y) < 64)
                state = 6
            else
                state = 7
            statetime = -1
        }
        else
        {
            state = 3
            statetime = -1
        }
    }
    if (state == 7 && point_distance(x, y, oCharacter.x, y) > 280)
        state = 3
}
if (state == 50)
{
    if (statetime == 0)
    {
        tl = instance_create((x - (facing * 6)), (y + 26), oMOmegaTailMutate)
        tl.image_xscale = facing
        body_spr = 632
        fleg_spr = sMOmega_FLegMutate
        bleg_spr = 631
        farm_spr = sMOmega_FArmMutate
        barm_spr = 630
        head_spr = 635
        body_frame = 7
        head_frame = 7
        bleg_frame = 3
        fleg_frame = 3
        farm_frame = 3
        barm_frame = 3
        head_follow = 0
        head_target_angle = 0
        yoff = 18
        tail.visible = false
    }
    if (statetime == 30)
        head_shake = 4
    if (statetime == 40)
        farm_shake = 4
    if (statetime == 50)
        body_shake = 4
    if (statetime == 60)
    {
        bleg_shake = 80
        fleg_shake = 60
        sfx_play(sndMGammaMorph)
    }
    if (statetime > 60 && statetime < 100)
    {
        if (bleg_frame > 0)
            bleg_frame -= 0.1
        if (fleg_frame > 0)
            fleg_frame -= 0.1
    }
    if (statetime == 100)
    {
        fleg_spr = sMOmega_FLeg_Crouch
        bleg_spr = 614
        fleg_frame = 9
        bleg_frame = 9
    }
    if (statetime == 70)
    {
        body_shake = 80
        head_shake = 80
        sfx_play(sndMGammaEyes)
    }
    if (statetime > 70 && statetime < 150)
    {
        if (body_frame > 0)
            body_frame -= 0.1
    }
    if (statetime == 150)
    {
        body_spr = omega_body
        body_frame = 0
    }
    if (statetime == 90)
    {
        farm_shake = 60
        barm_shake = 80
        fleg_shake = 10
    }
    if (statetime > 90 && statetime < 130)
    {
        if (farm_frame > 0)
            farm_frame -= 0.1
        if (barm_frame > 0)
            barm_frame -= 0.1
    }
    if (statetime == 130)
    {
        farm_spr = sMOmega_FArm
        barm_spr = 612
        farm_frame = 0
        barm_frame = 0
    }
    if (statetime == 110)
    {
        head_shake = 60
        bleg_shake = 8
        body_shake = 10
    }
    if (statetime > 110 && statetime < 190)
    {
        if (head_frame > 0)
            head_frame -= 0.1
    }
    if (statetime == 190)
    {
        head_spr = omega_head
        head_frame = 0
        head_xoff = 0
        head_yoff = 0
    }
    if (statetime < 190)
        eyes_close = 2
    if (statetime == 60)
    {
        bld = instance_create((x - (2 * facing)), (y + 15), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = facing
        bld.image_yscale = -1
    }
    if (statetime == 70)
    {
        bld = instance_create((x + (6 * facing)), (y + 10), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = (-facing)
        bld.image_yscale = -1
    }
    if (statetime == 90)
    {
        bld = instance_create((x + (14 * facing)), (y - 8), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = facing
        bld.image_yscale = 1
        bld = instance_create((x + (40 * facing)), y, oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = (-facing)
        bld.image_yscale = -1
    }
    if (statetime == 95)
    {
        bld = instance_create((x + (25 * facing)), (y - 2), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = facing
        bld.image_yscale = -1
    }
    if (statetime == 100)
    {
        bld = instance_create((x + (34 * facing)), (y - 15), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = (-facing)
        bld.image_yscale = -1
    }
    if (statetime == 110)
    {
        bld = instance_create((x + (40 * facing)), (y - 30), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = facing
    }
    if (statetime == 120)
    {
        bld = instance_create((x + (42 * facing)), (y - 26), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = (-facing)
        bld = instance_create((x + (20 * facing)), (y - 10), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = facing
        bld.image_yscale = -1
    }
    if (statetime == 135)
    {
        bld = instance_create((x + (40 * facing)), (y - 37), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_xscale = facing
        bld.image_yscale = -1
    }
    if (statetime == 220)
    {
        body_frame = 0
        head_frame = 0
        body_target_angle = 0
        fleg_spr = sMOmega_FLeg_Crouch
        bleg_spr = 614
        farm_spr = sMOmega_FArm_Slash
        barm_spr = 612
        head_spr = omega_head
        bleg_frame = 9
        fleg_frame = 9
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_follow = 0
        head_target_angle = 0
        yVel = 0
        tail.visible = true
        with (oMOmegaTailMutate)
            instance_destroy()
    }
    if (statetime >= 220)
    {
        fleg_frame = anim_frame(fleg_spr, fleg_frame, -0.25)
        bleg_frame = fleg_frame
        if (statetime < 260)
        {
            if (farm_frame < 2)
                farm_frame += 0.2
            if (farm_xoff < 10)
                farm_xoff += 0.5
        }
    }
    if (statetime == 260)
    {
        farm_frame = 3
        farm_xoff = 0
        proj = instance_create((((x - surf_x) + farm_x) + (14 * facing)), (((y - surf_y) + farm_y) + 38), oMOmega_Projectile)
        proj.hspeed = (5 * facing)
        proj.image_xscale = facing
        sfx_play(sndArachnusSwipe)
    }
    if (statetime > 260)
    {
        farm_frame = anim_frame(farm_spr, farm_frame, 0.5)
        if (fleg_frame > 0)
            fleg_frame -= 0.25
    }
    if (statetime < 110)
    {
        if (floor(fleg_frame) == 0)
            yoff = 22
        if (floor(fleg_frame) == 1)
            yoff = 20
        if (floor(fleg_frame) == 2)
            yoff = 18
        if (floor(fleg_frame) == 3)
            yoff = 15
    }
    if (statetime < 150)
    {
        if (floor(body_frame) == 0)
        {
            head_xoff = -1
            head_yoff = 1
        }
        if (floor(body_frame) == 1)
        {
            head_xoff = -2
            head_yoff = 2
        }
        if (floor(body_frame) == 2)
        {
            head_xoff = -3
            head_yoff = 3
        }
        if (floor(body_frame) == 3)
        {
            head_xoff = -6
            head_yoff = 5
        }
        if (floor(body_frame) == 4)
        {
            head_xoff = -8
            head_yoff = 7
        }
        if (floor(body_frame) == 5)
        {
            head_xoff = -10
            head_yoff = 8
        }
        if (floor(body_frame) == 6)
        {
            head_xoff = -11
            head_yoff = 9
        }
        if (floor(body_frame) == 7)
        {
            head_xoff = -12
            head_yoff = 10
        }
    }
    if (statetime >= 220)
    {
        if (floor(fleg_frame) == 0)
            yoff = 0
        if (floor(fleg_frame) == 1)
            yoff = 2
        if (floor(fleg_frame) == 2)
            yoff = 4
        if (floor(fleg_frame) == 3)
            yoff = 6
        if (floor(fleg_frame) == 4)
            yoff = 8
        if (floor(fleg_frame) == 5)
            yoff = 10
        if (floor(fleg_frame) == 6)
            yoff = 12
        if (floor(fleg_frame) == 7)
            yoff = 14
        if (floor(fleg_frame) == 8)
            yoff = 16
        if (floor(fleg_frame) == 9)
            yoff = 18
    }
    if (statetime > 290)
    {
        event_user(1)
        with (oEventCamera2)
            alarm[0] = 30
        with (oGFTrooperYellow)
            alarm[0] = 45
    }
}
if (state == 100)
{
    xVel = 0
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = -35
        body_spr = omega_body
        farm_spr = 619
        barm_spr = 612
        fleg_spr = 622
        bleg_spr = 614
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 0
        head_follow = 0
        head_target_angle = (-40 * facing)
        head_xoff = 0
        xVel = 0
        yVel = 0
        sfx_play(sndMOmegaDeath)
        roaring = 160
        eyes_close = 5000
        if instance_exists(grab_obj)
        {
            with (grab_obj)
                instance_destroy()
        }
        with (cam)
            instance_destroy()
    }
    if (statetime < 30)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Crouch, fleg_frame, 0.5)
        bleg_frame = fleg_frame
    }
}
if (head_target_angle != head_angle)
{
    head_angle = lerp(head_angle, head_target_angle, 0.1)
    head_angle = clamp(head_angle, head_angle_min, head_angle_max)
}
if (body_target_angle != body_angle_base)
{
    body_angle_base += ((body_target_angle - body_angle_base) / 10)
    body_angle_base = min(body_angle_base, body_angle_max)
    body_angle_base = max(body_angle_base, body_angle_min)
}
body_angle = (body_angle_base * facing)
image_angle = body_angle
body_x = (surf_x + (xoff * facing))
body_y = (surf_y + yoff)
fleg_x = (surf_x + (fleg_xoff * facing))
fleg_y = (surf_y + fleg_yoff)
bleg_x = (surf_x + (bleg_xoff * facing))
bleg_y = (surf_y + bleg_yoff)
head_x = ((body_x + lengthdir_x((head_len * facing), (body_angle + (head_dir * facing)))) + (head_xoff * facing))
head_y = ((body_y + lengthdir_y((head_len * facing), (body_angle + (head_dir * facing)))) + head_yoff)
mouth_x = (head_x + lengthdir_x((mouth_len * facing), (((body_angle + (head_dir * facing)) + (mouth_dir * facing)) + head_angle)))
mouth_y = (head_y + lengthdir_y((mouth_len * facing), (((body_angle + (head_dir * facing)) + (mouth_dir * facing)) + head_angle)))
farm_x = ((body_x + lengthdir_x((farm_len * facing), (body_angle + (farm_dir * facing)))) + (farm_xoff * facing))
farm_y = (body_y + lengthdir_y((farm_len * facing), (body_angle + (farm_dir * facing))))
barm_x = ((body_x + lengthdir_x((barm_len * facing), (body_angle + (barm_dir * facing)))) + (barm_xoff * facing))
barm_y = (body_y + lengthdir_y((barm_len * facing), (body_angle + (barm_dir * facing))))
if head_follow
{
    head_target_angle = round(point_direction(((x - surf_x) + head_x), ((y - surf_y) + head_y), targetx, targety))
    head_target_angle += (30 * facing)
    if (facing == 1)
    {
        if (head_target_angle > 180)
            head_target_angle -= 360
    }
    else
        head_target_angle -= 180
}
statetime += 1
if (flashing > 0)
    flashing -= 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (roaring > 0)
{
    roaring -= 1
    if (roar_frame < 2)
        roar_frame += 0.25
}
else if (roar_frame > 0)
    roar_frame -= 0.25
if (bleg_shake > 0)
    bleg_shake -= 1
if (barm_shake > 0)
    barm_shake -= 1
if (body_shake > 0)
    body_shake -= 1
if (head_shake > 0)
    head_shake -= 1
if (farm_shake > 0)
    farm_shake -= 1
if (fleg_shake > 0)
    fleg_shake -= 1
if (eyes_close > 0)
    eyes_close -= 1
if (eyes_close == 0)
{
    if (eyes_frame > -1)
        eyes_frame -= 0.25
}
else if (eyes_frame < 4)
    eyes_frame += 1
if (target_mode == 1 && distance_to_point(targetx, targety) < 32)
    target_mode = 0
moveTo(xVel, yVel)
