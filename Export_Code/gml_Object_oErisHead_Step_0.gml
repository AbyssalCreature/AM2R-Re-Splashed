var expl, bubble, core;
if (boosting > 0)
{
    if (!audio_is_playing(sndSBEris))
        sfx_loop(sndSBEris)
}
else if (!boosting)
    sfx_stop(sndSBEris)
if (fxtimer >= 0)
    fxtimer -= 1
if (fxtimer == -1)
    fxtimer = 5
if (roaring > 0)
{
    if (jawoff < 8)
        jawoff += 2
}
else if (jawoff > 2)
    jawoff -= 1
if (roaring > 0)
    roaring -= 1
if (flashing > 0)
    flashing -= 1
if (state != 100)
{
    segment[14].x = lerp(segment[14].x, (x + lengthdir_x(8, (image_angle - 180))), 0.5)
    segment[14].y = lerp(segment[14].y, (y + lengthdir_y(8, (image_angle - 180))), 0.5)
}
inrange = (x > 32 && x < 608 && y > 48 && y < 448)
if (state == 10)
{
    if (statetime == 0)
    {
        x = 720
        startx = 720
        direction = 180
        image_yscale = -1
        event_user(0)
    }
    else if (statetime == 120)
        sfx_play(sndErisRoar1)
    else if (statetime == 180)
    {
        speed = 4
        state = 2
        nextstate = 2
        statetime = 0
        mus_play(musEris)
        oMusicV2.bossbgm = 282
        scan_log(37, get_text("ScanEvents", "ScanBioform"), 120, 0)
    }
}
if (state == 0)
{
    lock = 0
    if (boosting > 0)
        boosting--
    nextstate += 1
    if (nextstate > 3)
        nextstate = 1
    if (statetime == 0)
    {
        if (boosting && nextstate == 3)
        {
            if (point_distance(320, 256, oCharacter.x, oCharacter.y) > 128)
                nextstate = 1
        }
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
        }

        facing = (-facing)
        if (floor(facing) == 1)
        {
            x = -16
            startx = -16
            direction = 0
            image_yscale = 1
            event_user(0)
            event_user(3)
        }
        else
        {
            x = 640
            startx = 640
            direction = 180
            image_yscale = -1
            event_user(0)
            event_user(3)
        }
    }
    if (statetime == (90 - (sign(boosting) * 90)))
    {
        if (!boosting)
            speed = (4 + phase)
        else
            speed = 9
        state = nextstate
        statetime = 0
    }
}
if (state == 1)
{
    if ((!boosting) || lock)
    {
        if (statetime == 0)
        {
            tgt = 0
            turnspeed = (5 + (phase * 2))
            y = 416
            event_user(3)
        }
        if (point_distance(x, y, ((tgt1x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt1y[tgt]) < 32 && speed != 0)
        {
            if (tgt < (array_length_1d(tgt1x) - 1))
                tgt += 1
            else
            {
                speed = 0
                state = 0
                statetime = -1
            }
        }
        if (tgt == 4 || tgt == 5 || tgt == 6 || tgt == 7 || tgt == 8 || tgt == 9 || tgt == 10 || tgt == 11 || tgt == 12)
        {
            if (statetime < 300)
                turnspeed = ((6 + (phase * 2)) + (4 * sign(boosting)))
            if (boosting > 0 && statetime > 300)
                turnspeed += 0.1
        }
        else
            turnspeed = (5 + (phase * 2))
        turn_towards_direction(point_direction(x, y, ((tgt1x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt1y[tgt]), turnspeed)
    }
    else
    {
        if (statetime == 0)
        {
            tgt = 0
            turnspeed = 15
            y = 144
            event_user(3)
        }
        if (point_distance(x, y, ((tgt4x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt4y[tgt]) < 32 && speed != 0)
        {
            if (tgt < (array_length_1d(tgt4x) - 1))
                tgt += 1
            else
            {
                speed = 0
                state = 0
                statetime = -1
            }
        }
        turn_towards_direction(point_direction(x, y, ((tgt4x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt4y[tgt]), turnspeed)
    }
}
if (state == 2)
{
    if ((!boosting) || lock)
    {
        if (statetime == 0)
        {
            tgt = 0
            turnspeed = (3 + (phase * 2))
            y = 144
            event_user(3)
        }
        if (point_distance(x, y, ((tgt2x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt2y[tgt]) < 32 && speed != 0)
        {
            if (tgt < (array_length_1d(tgt2x) - 1))
                tgt += 1
            else
            {
                speed = 0
                state = 0
                statetime = -1
            }
        }
        turn_towards_direction(point_direction(x, y, ((tgt2x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt2y[tgt]), turnspeed)
    }
    else
    {
        if (statetime == 0)
        {
            tgt = 0
            turnspeed = 15
            y = 416
            event_user(3)
        }
        if (point_distance(x, y, ((tgt5x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt5y[tgt]) < 32 && speed != 0)
        {
            if (tgt < (array_length_1d(tgt5x) - 1))
                tgt += 1
            else
            {
                speed = 0
                state = 0
                statetime = -1
            }
        }
        turn_towards_direction(point_direction(x, y, ((tgt5x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt5y[tgt]), turnspeed)
    }
}
if (state == 3)
{
    if ((!boosting) || lock)
    {
        if (statetime == 0)
        {
            tgt = 0
            turnspeed = (4 + (phase * 2))
            y = 288
            event_user(3)
        }
        if (point_distance(x, y, ((tgt3x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt3y[tgt]) < 32 && speed != 0)
        {
            if (tgt < (array_length_1d(tgt3x) - 1))
                tgt += 1
            else
            {
                speed = 0
                state = 0
                statetime = -1
            }
        }
        turn_towards_direction(point_direction(x, y, ((tgt3x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt3y[tgt]), turnspeed)
    }
    else
    {
        if (statetime == 0)
        {
            tgt = 0
            turnspeed = 5
            y = 288
            event_user(3)
        }
        if (point_distance(x, y, ((tgt6x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt6y[tgt]) < 32 && speed != 0)
        {
            if (tgt < (array_length_1d(tgt6x) - 1))
            {
                if (tgt == 2 || tgt == 8 || tgt == 14)
                    event_user(4)
                tgt += 1
            }
            else
            {
                speed = 0
                state = 0
                statetime = -1
            }
        }
        turn_towards_direction(point_direction(x, y, ((tgt6x[tgt] * (-facing)) + (640 * ((1 + facing) / 2))), tgt6y[tgt]), turnspeed)
    }
}
if (boostlaunch > 0)
{
    if (flashing <= 1)
        flashing = 10
    speed *= 0.95
    boostlaunch--
    if (boostlaunch <= 0)
    {
        lock = 1
        speed = 9
        turnspeed = 15
        switch boostphase
        {
            case 1:
                boosting = 4
                break
            case 3:
                boosting = 5
                break
            case 5:
                boosting = 6
                break
        }

        boostphase++
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
        for (i = 0; i <= bodylength; i += 1)
        {
            with (segment[i])
                event_user(10)
        }
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
if (state != 100 && state != 0)
    image_angle = direction
statetime++
if (cooldown > 0)
    cooldown--
