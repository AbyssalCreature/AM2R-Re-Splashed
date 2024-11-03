var msl, fr_speed;
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
image_xscale = facing
if (global.difficulty >= 2 || myhealth < 150)
    canswipe = 1
else
    canswipe = 0
if (isCollisionBottom(1) == 0)
    yVel += 0.2
else if (yVel > 0)
    yVel = 0
if (state == 0)
{
    body_frame = 0
    head_frame = 0
    body_target_angle = 0
    fleg_spr = sMZeta_FLeg
    bleg_spr = 576
    farm_spr = sMZeta_FArm
    barm_spr = 575
    bleg_frame = 0
    fleg_frame = 0
    farm_frame = 0
    barm_frame = 0
    yoff = 0
    head_yoff = 0
    head_follow = 1
    xVel = 0
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
}
if (state == 1)
{
    if (statetime == 0)
    {
        body_target_angle = -15
        head_spr = zeta_head[1]
        fleg_spr = sMZeta_FLeg_Walk
        bleg_spr = 579
        farm_spr = sMZeta_FArm
        barm_spr = 575
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        head_frame = 0
        yoff = 0
        head_yoff = 0
        head_follow = 1
        xVel = (2 * facing)
    }
    if ((targetx < x && facing == 1) || (targetx > x && facing == -1))
    {
        state = 2
        statetime = 0
    }
    if (target_mode == 1 && distance_to_point(targetx, targety) < 32)
        target_mode = 0
    if ((fleg_frame >= 3 && fleg_frame < 3.25) || (fleg_frame >= 14 && fleg_frame < 14.25))
    {
        sfx_play(sndMZetaFootstep)
        screen_shake(5, 2)
    }
    if (swiping == 0 && instance_number(oMissile) > 0 && canswipe)
    {
        msl = instance_nearest(x, y, oMissile)
        if (noswipe == 0 && swiping == 0)
        {
            if ((msl.x > x && facing == 1) || (msl.x < x && facing == -1))
            {
                swiping = 1
                noswipe = 150
                farm_spr = sMZeta_FArm_Swipe
                farm_frame = 8
                sfx_play(sndMZetaAttack2)
                roaring = 30
            }
        }
    }
    if (swiping == 0 && point_distance(x, y, oCharacter.x, y) < 70 && oCharacter.y > (y + 40) && ((oCharacter.x > x && facing == 1) || (oCharacter.x < x && facing == -1)))
    {
        if (x > (limit_left + 32) && x < (limit_right - 32))
        {
            swiping = 1
            noswipe = 150
            farm_spr = sMZeta_FArm_Swipe
            farm_frame = 8
            sfx_play(sndMZetaAttack2)
            roaring = 30
        }
    }
    if swiping
    {
        fr_speed = -0.5
        if (farm_frame < 6.5)
            fr_speed = -0.25
        xVel = (1.2 * facing)
        farm_frame = anim_frame(farm_spr, farm_frame, fr_speed)
        if (farm_frame >= 6 && farm_frame < 6.5)
        {
            proj = instance_create((((x - surf_x) + farm_x) + (14 * facing)), (((y - surf_y) + farm_y) + 10), oMZetaSlashProj2)
            proj.hspeed = (2 * facing)
            proj.image_xscale = facing
            sfx_play(sndArachnusSwipe)
        }
        if (farm_frame < 0.5)
        {
            swiping = 0
            farm_spr = 584
        }
    }
    else
        xVel = (2 * facing)
    if (hits_taken >= 2 && statetime > 30 && ((oCharacter.x > x && facing == 1) || (oCharacter.x < x && facing == -1)))
    {
        state = choose(3, 6, 8)
        statetime = 0
        hits_taken = 0
    }
    if (statetime == 120 && target_mode == 0)
    {
        state = choose(3, 6, 8)
        statetime = 0
    }
    if ((x > limit_right && facing == 1) || (x < limit_left && facing == -1))
    {
        state = 10
        statetime = 0
    }
    if ((facing == 1 && isCollisionRight(1) && x < limit_right) || (facing == -1 && isCollisionLeft(1) && x > limit_left))
    {
        state = 3
        statetime = 0
    }
    if ((facing == 1 && collision_point((x + 20), (y + 45), oSolid, 0, 1) == -4) || (facing == -1 && collision_point((x - 20), (y + 45), oSolid, 0, 1) == -4))
    {
        state = 3
        statetime = 0
    }
    fleg_frame = anim_frame_cycle(fleg_spr, fleg_frame, (abs(xVel) * 0.2))
    bleg_frame = fleg_frame
    if (floor(fleg_frame) == 0)
    {
        yoff = 0
        head_yoff = 0
        body_frame = 0
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 1)
    {
        yoff = 0
        head_yoff = 0
        body_frame = 0
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 2)
    {
        yoff = 1
        head_yoff = 0
        body_frame = 1
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 3)
    {
        yoff = 2
        head_yoff = 0
        body_frame = 1
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 4)
    {
        yoff = 3
        head_yoff = 0
        body_frame = 2
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 5)
    {
        yoff = 3
        head_yoff = 0
        body_frame = 2
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 6)
    {
        yoff = 3
        head_yoff = 1
        body_frame = 1
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 7)
    {
        yoff = 2
        head_yoff = 2
        body_frame = 1
        if (!swiping)
            farm_frame = 2
        barm_frame = 2
    }
    if (floor(fleg_frame) == 8)
    {
        yoff = 2
        head_yoff = 2
        body_frame = 0
        if (!swiping)
            farm_frame = 2
        barm_frame = 2
    }
    if (floor(fleg_frame) == 9)
    {
        yoff = 1
        head_yoff = 1
        body_frame = 0
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 10)
    {
        yoff = 1
        head_yoff = 1
        body_frame = 0
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 11)
    {
        yoff = 0
        head_yoff = 0
        body_frame = 0
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 12)
    {
        yoff = 0
        head_yoff = 0
        body_frame = 3
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 13)
    {
        yoff = 1
        head_yoff = 0
        body_frame = 3
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 14)
    {
        yoff = 2
        head_yoff = 0
        body_frame = 4
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 15)
    {
        yoff = 3
        head_yoff = 0
        body_frame = 4
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 16)
    {
        yoff = 3
        head_yoff = 0
        body_frame = 4
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 17)
    {
        yoff = 3
        head_yoff = 1
        body_frame = 3
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 18)
    {
        yoff = 2
        head_yoff = 2
        body_frame = 3
        if (!swiping)
            farm_frame = 2
        barm_frame = 2
    }
    if (floor(fleg_frame) == 19)
    {
        yoff = 1
        head_yoff = 1
        body_frame = 0
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 20)
    {
        yoff = 1
        head_yoff = 1
        body_frame = 0
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        head_spr = zeta_head[0]
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
    }
    xVel *= 0.95
    if (statetime > 0)
    {
        if (head_frame < 2.5)
            head_frame += 0.25
    }
    if (statetime == 10)
    {
        body_spr = 582
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
        body_spr = 580
        farm_spr = 584
        barm_spr = 575
        fleg_spr = 586
        bleg_spr = 576
        head_xoff = 0
        if (head_frame > 0)
            head_frame -= 0.25
    }
    if (statetime == 22)
    {
        state = 1
        statetime = -1
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = -20
        head_spr = zeta_head[1]
        fleg_spr = 587
        bleg_spr = 577
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 0
        head_follow = 1
        xVel = 0
        yVel = 0
        if (x < (limit_left + 32) && x > (limit_right - 32))
        {
            state = 10
            statetime = 0
        }
    }
    if (statetime < 30)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Crouch, fleg_frame, 0.5)
        bleg_frame = fleg_frame
    }
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
        body_target_angle = 20
        head_spr = zeta_head[1]
        fleg_spr = 588
        bleg_spr = 578
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 0
        yVel = -3.2
        xVel = (4 * facing)
        sfx_play(sndMZetaJump)
    }
    if (statetime < 10)
    {
        bleg_frame = 0
        fleg_frame = 0
    }
    if (statetime >= 10)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Jump, fleg_frame, 0.2)
        bleg_frame = fleg_frame
    }
    if (isCollisionBottom(1) > 0 && statetime > 10)
    {
        state = 5
        statetime = 0
    }
}
if (state == 5)
{
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = -20
        head_spr = zeta_head[1]
        fleg_spr = 587
        bleg_spr = 577
        bleg_frame = 5
        fleg_frame = 5
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 0
        xVel = 0
        yVel = 0
        sfx_play(sndMZetaLand)
        make_smoke_explosion(x, (y + 41))
        make_smoke_explosion((x + 10), (y + 41))
        make_smoke_explosion((x - 10), (y + 41))
        screen_shake(8, 3)
    }
    if (statetime < 30)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Crouch, fleg_frame, -0.5)
        bleg_frame = fleg_frame
    }
    if (statetime == 20)
    {
        state = 1
        statetime = -1
    }
}
if (state == 6)
{
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = -20
        head_spr = zeta_head[1]
        fleg_spr = 587
        bleg_spr = 577
        bleg_frame = 0
        fleg_frame = 0
        farm_spr = 584
        barm_spr = 575
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 0
        head_follow = 1
        xVel = 0
        sfx_play(sndMZetaAttack)
        roaring = 30
    }
    if (statetime < 20)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Crouch, fleg_frame, 1)
        bleg_frame = fleg_frame
    }
    if (statetime == 10)
    {
        farm_spr = 585
        body_frame = 3
    }
    if (statetime > 10 && statetime < 35)
        farm_frame = anim_frame(sMZeta_FArm_Swipe, farm_frame, 0.5)
    if (statetime == 15)
    {
        body_frame = 4
        head_frame = 3
    }
    if (statetime == 25)
    {
        proj = instance_create((((x - surf_x) + farm_x) + (14 * facing)), (((y - surf_y) + farm_y) + 10), oMZetaSlashProj)
        proj.hspeed = (5 * facing)
        proj.image_xscale = facing
        sfx_play(sndArachnusSwipe)
    }
    if (statetime == 30)
    {
        farm_spr = 584
        barm_spr = 585
        body_frame = 1
        head_frame = 0
    }
    if (statetime > 30 && statetime < 50)
        barm_frame = anim_frame(sMZeta_FArm_Swipe, barm_frame, 0.5)
    if (statetime == 35)
    {
        body_frame = 2
        head_frame = 1
    }
    if (statetime == 45)
    {
        proj = instance_create((((x - surf_x) + barm_x) + (14 * facing)), (((y - surf_y) + barm_y) + 10), oMZetaSlashProj)
        proj.hspeed = (5 * facing)
        proj.image_xscale = facing
        sfx_play(sndArachnusSwipe)
        head_frame = 0
    }
    if (statetime == 50)
        barm_spr = 575
    if (statetime > 50)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Crouch, fleg_frame, -0.5)
        bleg_frame = fleg_frame
    }
    if (statetime == 60)
    {
        state = 1
        statetime = -1
    }
}
if (state == 7)
{
    head_target_angle = 0
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = 20
        yoff = 0
        head_yoff = 0
        head_xoff = -5
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        head_follow = 0
    }
    if (statetime > 0 && statetime < 15)
    {
        if (head_frame < 2.5)
            head_frame += 0.25
        if (head_xoff < 0)
            head_xoff += 1
    }
    if (statetime == 20)
        body_target_angle = 17
    if (statetime > 30)
    {
        if (head_frame > 0)
            head_frame -= 0.1
    }
    if (statetime == 60)
    {
        state = 0
        statetime = -1
    }
}
if (state == 8)
{
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = -25
        fleg_spr = 589
        bleg_spr = 579
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 0
        head_follow = 0
        head_target_angle = (-30 * facing)
        xVel = 0
        yVel = 0
        sfx_play(sndMZetaAttack2)
        roaring = 30
    }
    if (statetime < 50)
        fleg_frame = anim_frame_cycle(sMZeta_FLeg_Walk, fleg_frame, 1)
    if (statetime == 50)
    {
        state = 9
        statetime = 0
    }
    switch fleg_frame
    {
        case 4:
            make_smoke_explosion((x + (16 * facing)), (y + 41))
            sfx_play(sndMZetaCharge)
            break
        case 6:
            make_smoke_explosion((x + (8 * facing)), (y + 41))
            break
        case 8:
            make_smoke_explosion((x - (2 * facing)), (y + 41))
            break
        case 10:
            make_smoke_explosion((x - (6 * facing)), (y + 41))
            break
        case 12:
            make_smoke_explosion((x - (14 * facing)), (y + 41))
            break
        case 14:
            make_smoke_explosion((x - (24 * facing)), (y + 41))
            break
    }

}
if (state == 9)
{
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = -30
        fleg_spr = 589
        bleg_spr = 579
        bleg_frame = 12
        fleg_frame = 15
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 10
        head_xoff = 1
        head_follow = 0
        yVel = 0
        xVel = (10 * facing)
        blur = 1
        alarm[1] = 1
        sfx_play(sndArachnusHomingBall)
    }
    if (((facing == 1 && collision_line(x, (y + 40), (x + 60), (y + 40), oSolid, false, true)) || (facing == -1 && collision_line(x, (y + 40), (x - 60), (y + 40), oSolid, false, true))) && statetime < 17)
    {
        statetime = 17
        xVel = 0
    }
    if (statetime > 16)
    {
        xVel *= 0.7
        blur = 0
        if (floor(fleg_frame) != 8)
            fleg_frame = anim_frame_cycle(sMZeta_FLeg_Walk, fleg_frame, 0.5)
        if (floor(bleg_frame) != 18)
            bleg_frame = anim_frame_cycle(sMZeta_BLeg_Walk, bleg_frame, 0.25)
    }
    if (statetime == 50)
    {
        state = 1
        statetime = -1
    }
    head_target_angle = (-30 * facing)
    head_angle = (-30 * facing)
    if (floor(fleg_frame) == 0)
    {
        yoff = 0
        head_yoff = 0
        body_frame = 0
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 1)
    {
        yoff = 0
        head_yoff = 0
        body_frame = 0
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 2)
    {
        yoff = 1
        head_yoff = 0
        body_frame = 1
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 3)
    {
        yoff = 2
        head_yoff = 0
        body_frame = 1
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 4)
    {
        yoff = 3
        head_yoff = 0
        body_frame = 2
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 5)
    {
        yoff = 3
        head_yoff = 0
        body_frame = 2
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 6)
    {
        yoff = 3
        head_yoff = 1
        body_frame = 1
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 7)
    {
        yoff = 2
        head_yoff = 2
        body_frame = 1
        if (!swiping)
            farm_frame = 2
        barm_frame = 2
    }
    if (floor(fleg_frame) == 8)
    {
        yoff = 2
        head_yoff = 2
        body_frame = 0
        if (!swiping)
            farm_frame = 2
        barm_frame = 2
    }
    if (floor(fleg_frame) == 9)
    {
        yoff = 1
        head_yoff = 1
        body_frame = 0
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 10)
    {
        yoff = 1
        head_yoff = 1
        body_frame = 0
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 11)
    {
        yoff = 0
        head_yoff = 0
        body_frame = 0
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 12)
    {
        yoff = 0
        head_yoff = 0
        body_frame = 3
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 13)
    {
        yoff = 1
        head_yoff = 0
        body_frame = 3
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 14)
    {
        yoff = 2
        head_yoff = 0
        body_frame = 4
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 15)
    {
        yoff = 3
        head_yoff = 0
        body_frame = 4
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 16)
    {
        yoff = 3
        head_yoff = 0
        body_frame = 4
        if (!swiping)
            farm_frame = 0
        barm_frame = 0
    }
    if (floor(fleg_frame) == 17)
    {
        yoff = 3
        head_yoff = 1
        body_frame = 3
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 18)
    {
        yoff = 2
        head_yoff = 2
        body_frame = 3
        if (!swiping)
            farm_frame = 2
        barm_frame = 2
    }
    if (floor(fleg_frame) == 19)
    {
        yoff = 1
        head_yoff = 1
        body_frame = 0
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
    if (floor(fleg_frame) == 20)
    {
        yoff = 1
        head_yoff = 1
        body_frame = 0
        if (!swiping)
            farm_frame = 1
        barm_frame = 1
    }
}
if (state == 10)
{
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = 15
        fleg_spr = 589
        bleg_spr = 578
        bleg_frame = 1
        fleg_frame = 3
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 0
        head_xoff = 0
        head_follow = 1
        yVel = -2
        xVel = (-5 * facing)
        sfx_play(sndMZetaAttack2)
        sfx_play(sndMZetaJump)
        roaring = 20
    }
    if (isCollisionBottom(1) > 0 && statetime > 10)
    {
        state = 11
        statetime = 0
        sfx_play(sndMZetaLand)
        screen_shake(8, 3)
        make_smoke_explosion(x, (y + 41))
        make_smoke_explosion((x + 10), (y + 41))
        make_smoke_explosion((x - 10), (y + 41))
    }
}
if (state == 11)
{
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = -20
        fleg_spr = 587
        bleg_spr = 577
        bleg_frame = 0
        fleg_frame = 0
        farm_spr = 584
        barm_spr = 575
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_spr = zeta_head[1]
        head_yoff = 0
        head_follow = 0
        xVel = 0
        head_target_angle = (-10 * facing)
        alarm[0] = 30
    }
    if (statetime < 30)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Crouch, fleg_frame, 0.5)
        bleg_frame = fleg_frame
    }
    if (statetime == 10)
        mask_index = sMZetaMask2
    if (statetime == 30)
    {
        head_target_angle = (30 * facing)
        body_target_angle = 10
        sfx_play(sndMZetaAcid)
    }
    if (statetime > 20 && statetime < 60)
        roaring = 1
    if (statetime > 90)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Crouch, fleg_frame, -0.5)
        bleg_frame = fleg_frame
    }
    if (statetime == 100)
    {
        mask_index = sprite_index
        state = 1
        statetime = -1
        target_mode = 1
        targetx2 = (x + (-300 * facing))
    }
}
if (state == 50)
{
    if (statetime == 0)
    {
        body_spr = 596
        body_frame = 1
        body_target_angle = -32
        image_angle = -32
        fleg_spr = 587
        bleg_spr = 577
        bleg_frame = 5
        fleg_frame = 5
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_xoff = -13
        head_yoff = 23
        head_follow = 0
        head_target_angle = (-40 * facing)
        head_angle = (-40 * facing)
    }
    if (statetime > 30 && statetime < 120)
    {
        if collision_line(x, y, x, (y + 43), oSolid, false, true)
            y -= 0.5
    }
    if (statetime > 70)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Crouch, fleg_frame, -0.25)
        bleg_frame = fleg_frame
    }
    if (statetime > 50)
    {
        head_xoff = lerp(head_xoff, 0, 0.05)
        head_yoff = lerp(head_yoff, 0, 0.05)
        body_target_angle = lerp(body_target_angle, 0, 0.02)
    }
    if (statetime > 85)
        head_target_angle = lerp(head_target_angle, 0, 0.05)
    if (statetime == 90)
    {
        fleg_spr = 586
        bleg_spr = 576
        bleg_frame = 0
        fleg_frame = 0
        yoff = 0
    }
    if (statetime == 95)
        body_frame = 0
    if (statetime == 100)
    {
        body_spr = 580
        body_frame = 2
    }
    if (statetime > 100)
        body_frame = anim_frame(sMZeta_Body, body_frame, -0.2)
    if (statetime == 200)
    {
        event_user(1)
        statetime = -1
        with (oEventCamera2)
            alarm[0] = 20
    }
}
if (state == 100)
{
    xVel = 0
    if (statetime == 0)
    {
        body_frame = 0
        body_target_angle = -30
        fleg_spr = 587
        bleg_spr = 577
        bleg_frame = 0
        fleg_frame = 0
        farm_frame = 0
        barm_frame = 0
        yoff = 0
        head_yoff = 0
        head_follow = 0
        head_target_angle = (-30 * facing)
        xVel = 0
        yVel = 0
        blur = 0
        sfx_play(sndMZetaDeath)
        roaring = 100
        with (cam)
            instance_destroy()
    }
    if (statetime < 30)
    {
        fleg_frame = anim_frame(sMZeta_FLeg_Crouch, fleg_frame, 0.5)
        bleg_frame = fleg_frame
    }
}
if (fleg_spr == 587)
{
    if (floor(fleg_frame) == 0)
        yoff = 1
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
}
if (body_spr == 580)
{
    if (body_frame == 0)
    {
        farm_xoff = 0
        barm_xoff = 0
    }
    if (body_frame == 1)
    {
        farm_xoff = -1
        barm_xoff = 1
    }
    if (body_frame == 2)
    {
        farm_xoff = -2
        barm_xoff = 2
    }
    if (body_frame == 3)
    {
        farm_xoff = 1
        barm_xoff = -1
    }
    if (body_frame == 4)
    {
        farm_xoff = 2
        barm_xoff = -2
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
if (head_spr == zeta_head[1])
{
    if (roaring > 0)
        head_frame = anim_frame(zeta_head[1], head_frame, 0.25)
    else
        head_frame = anim_frame(zeta_head[1], head_frame, -0.25)
}
with (oCharacter)
{
    if (state == 41)
    {
        if (facing == LEFT)
            xVel = 4
        else
            xVel = -4
        if (statetime == 1)
            yVel = -4
    }
}
statetime += 1
if (flashing > 0)
    flashing -= 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (noswipe > 0)
    noswipe -= 1
if (roaring > 0)
    roaring -= 1
moveTo(xVel, yVel)
