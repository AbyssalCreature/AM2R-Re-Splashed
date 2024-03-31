inrange = (x > 32 && x < 608 && y > 48 && y < 448)
if (state == 10)
{
    if (statetime == 0)
    {
        facing = -1
        x = 720
        startx = 720
        direction = 180
        image_yscale = -1
        event_user(0)
    }
    if (statetime == 120)
        sfx_play(sndErisRoar1)
    if (statetime == 180)
    {
        boosting = 1
        state = 2
        statetime = 0
        mus_play(musEris)
        oMusicV2.bossbgm = 282
        scan_log(37, get_text("ScanEvents", "ScanBioform"), 120, 0)
    }
}
if (state == 0)
{
    nextstate += 1
    if (nextstate > 3)
        nextstate = 1
    if (statetime == 0)
    {
        switch nextstate
        {
            case 1:
                sfx_play(sndErisRoar1)
                break
            case 2:
                sfx_play(sndErisRoar2)
                break
            case 3:
                sfx_play(sndErisRoar3)
                break
            case 4:
                sfx_play(sndErisRoar4)
                break
        }

        facing = choose(1, -1)
        if (facing == 1)
        {
            x = -64
            startx = -64
            direction = 0
            image_yscale = 1
            event_user(0)
        }
        else
        {
            x = 720
            startx = 720
            direction = 180
            image_yscale = -1
            event_user(0)
        }
    }
    if (boostphase == 1)
    {
        boostphase = 2
        boosting = 4
    }
    else if (boostphase == 3)
    {
        boostphase = 4
        boosting = 5
    }
    else if (boostphase == 5)
    {
        boostphase = 6
        boosting = 6
    }
    if (boosting > 0)
        boosting--
    if (statetime == (90 - (sign(boosting) * 90)))
    {
        state = nextstate
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        event_user(1)
        tgt = 0
        y = 240
        turnspeed = ((2 * speedmult) * 1.2)
        event_user(4)
    }
    if (statetime > 300)
        turnspeed += 0.1
    targetx[0] = (startx + (160 * facing))
    targety[0] = 304
    targetx[1] = (startx + (320 * facing))
    targety[1] = 416
    targetx[2] = (startx + (480 * facing))
    targety[2] = 304
    targetx[3] = (startx + (320 * facing))
    targety[3] = 144
    targetx[4] = (startx + (160 * facing))
    targety[4] = 300
    targetx[5] = (startx + (-60 * facing))
    targety[5] = 288
    if (tgt < 6)
    {
        if (stun == 0)
            speed = (4 * speedmult)
        else
            speed = (4 * speedmult)
    }
    if (tgt == 6 && (x < 0 || x > 640))
    {
        speed = 0
        if (tailobj.x == x && tailobj.y == y)
        {
            state = 0
            statetime = -1
        }
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        event_user(1)
        tgt = 0
        y = 144
        turnspeed = ((2 * speedmult) * 1.2)
        event_user(4)
    }
    if (statetime > (300 - (sign(boosting) * 150)))
        turnspeed += 0.1
    targetx[0] = (startx + (160 * facing))
    targety[0] = 144
    targetx[1] = (startx + (448 * facing))
    targety[1] = 416
    targetx[2] = (startx + (576 * facing))
    targety[2] = 368
    targetx[3] = (startx + (528 * facing))
    targety[3] = 112
    targetx[4] = (startx + (160 * facing))
    targety[4] = 432
    targetx[5] = (startx + (160 * facing))
    targety[5] = 416
    targetx[6] = (startx + (-60 * facing))
    targety[6] = 416
    if (tgt < 7 && (x < 0 || x > 640))
    {
        if (stun == 0)
            speed = (4 * speedmult)
        else
            speed = 0
    }
    if (round(tgt) == 7)
    {
        speed = 0
        if (tailobj.x == x && tailobj.y == y)
        {
            state = 0
            statetime = -1
        }
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        event_user(1)
        tgt = 0
        tgtx = oCharacter.x
        tgty = oCharacter.y
        turnspeed = ((4 * speedmult) * 1.2)
        event_user(4)
    }
    if (statetime > 300)
        turnspeed += 0.1
    targetx[0] = (startx + (80 * facing))
    targety[0] = y
    targetx[1] = (startx + (160 * facing))
    targety[1] = (tgty - 64)
    targetx[2] = (startx + (240 * facing))
    targety[2] = (tgty + 64)
    targetx[3] = (startx + (320 * facing))
    targety[3] = (tgty - 64)
    targetx[4] = (startx + (400 * facing))
    targety[4] = (tgty + 64)
    targetx[5] = (startx + (480 * facing))
    targety[5] = (tgty - 64)
    targetx[6] = (startx + (560 * facing))
    targety[6] = 144
    targetx[7] = (startx + (740 * facing))
    targety[7] = 144
    if (tgt < 8 && (x < 0 || x > 640))
    {
        if (stun == 0)
            speed = (4 * speedmult)
        else
            speed = 0
    }
    if (tgt == 8)
    {
        speed = 0
        if (tailobj.x == x && tailobj.y == y)
        {
            state = 0
            statetime = -1
        }
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
        event_user(1)
        tgt = 0
        y = 240
        turnspeed = ((4 * speedmult) * 1.2)
    }
    if (statetime > 300)
        turnspeed += 0.1
    if (tgt < 2 && point_distance(x, y, oCharacter.x, (oCharacter.y - 16)) > 120)
    {
        tgtx = oCharacter.x
        tgty = (oCharacter.y - 16)
    }
    targetx[0] = (startx + (96 * facing))
    targety[0] = 112
    targetx[1] = tgtx
    targety[1] = tgty
    targetx[2] = (tgtx + lengthdir_x(64, image_angle))
    targety[2] = (tgty + lengthdir_y(64, image_angle))
    targetx[3] = (startx + (720 * facing))
    targety[3] = 288
    if (tgt < 4)
    {
        if (stun == 0)
            speed = (4 * speedmult)
        else
            speed = 0
    }
    if (tgt == 4 && (x < 0 || x > 640))
    {
        speed = 0
        if (tailobj.x == x && tailobj.y == y)
        {
            state = 0
            statetime = -1
        }
    }
}
if (state == 100)
{
    if (statetime < 30)
        speed *= 0.8
    else if (vspeed > -0.2)
        vspeed -= 0.01
    if (statetime == 0)
    {
        for (i = 1; i < (bodylength - 1); i += 1)
        {
            with (mybody[i])
                event_user(10)
        }
        with (tailobj)
            instance_destroy()
        sfx_play(sndErisDeath)
        if (oControl.mod_fusion == 0)
        {
            mus_fadeout(musEris)
            oMusicV2.bossbgm = 0
        }
    }
    if (statetime == 280)
    {
        repeat (8)
        {
            expl = instance_create((x + random_range(-16, 16)), (y + random_range(-16, 16)), oFXAnimSpark)
            expl.image_speed = (0.3 + random(0.5))
            expl.additive = 0
            expl.sprite_index = sExpl1
        }
        make_explosion3(x, y)
        repeat (20)
        {
            bubble = instance_create(x, y, oLBubble)
            if instance_exists(bubble)
            {
                bubble.hspeed = random_range(-2.5, 2.5)
                bubble.vspeed = (-random(0.4))
            }
        }
        instance_create(x, y, oScreenFlash)
        sfx_play(sndMissileExpl)
        global.event[261] = 1
        if (oControl.mod_fusion == 0)
        {
            with (oDoorA5)
                event_user(3)
            mus_current_fadein()
        }
        else
        {
            core = instance_create(mean(bbox_left, bbox_right), mean(bbox_top, bbox_bottom), oCoreX)
            core.lastBossX = x
            core.lastBossY = y
            core.lastBossSprite = sprite_index
            core.lastBossFrame = image_index
            core.lastBossAngle = image_angle
            core.lastBossFacing = 1
            core.lastYscale = image_yscale
            core.lastBossDepth = depth
        }
        instance_destroy()
    }
}
if (state != 100)
{
    if (point_distance(x, y, targetx[tgt], targety[tgt]) < 32 && speed != 0)
        tgt += 1
    turn_towards_direction(point_direction(x, y, targetx[tgt], targety[tgt]), turnspeed)
    image_angle = direction
}
if (roaring > 0)
{
    if (jawoff < 6)
        jawoff += 2
}
else if (jawoff > 0)
    jawoff -= 1
statetime += 1
if (roaring > 0)
    roaring -= 1
if (flashing > 0)
    flashing -= 1
if (stun > 0)
    stun -= 1
if (fxtimer >= 0)
    fxtimer -= 1
if (fxtimer == -1)
    fxtimer = 5
if (boosting > 0)
{
    if (!audio_is_playing(sndSBEris))
        sfx_loop(sndSBEris)
}
else if (!boosting)
    sfx_stop(sndSBEris)
if use2
{
    event_user(2)
    use2 = 0
}
