col_front_x = (x + 130)
col_back = collision_line(x, y, x, (y + height_back), oSolid, true, true)
col2_back = collision_point(x, ((y + height_back) + 1), oSolid, 1, 1)
col_front = collision_line(col_front_x, col_front_y, col_front_x, (col_front_y + height_front), oSolid, true, true)
col2_front = collision_point(col_front_x, ((col_front_y + height_front) + 1), oSolid, 1, 1)
if (col2_back < 0)
    y += 1
else if (col_back > 0)
    y -= 1
if (col2_front < 0)
    col_front_y += 1
else if (col_front > 0)
    col_front_y -= 1
image_angle = point_direction(x, y, col_front_x, col_front_y)
neck_x = lengthdir_x(140, (image_angle + 17))
neck_y = lengthdir_y(140, (image_angle + 17))
leg1f_x = lengthdir_x(129, (image_angle + 15))
leg1f_y = lengthdir_y(129, (image_angle + 15))
leg1b_x = lengthdir_x(37, (image_angle + 43))
leg1b_y = lengthdir_y(37, (image_angle + 43))
if (state == 0)
{
    head_target_x = ((x + neck_x) + 50)
    head_target_y = ((y + neck_y) - 10)
    head_obj.x = head_target_x
    head_obj.y = head_target_y
    height_target_front = 20
    height_target_back = 20
    height_front = 20
    height_back = 20
    head_obj.canbehit = 0
    if (statetime == 120)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        height_target_front = 20
        height_target_back = 20
        height_front = 20
        height_back = 20
        head_obj.state = 1
        head_obj.statetime = 0
        head_obj.canbehit = 0
    }
    head_target_x = ((x + neck_x) + 50)
    head_target_y = ((y + neck_y) - 10)
    if (statetime == 60)
        targetx = 600
    if (statetime == 240)
    {
        state = 3
        statetime = 0
    }
}
if (state == 2)
{
    head_target_x = ((x + neck_x) + 20)
    head_target_y = (y + neck_y)
    height_target_front = 20
    height_target_back = 20
    maxspeed = 2
    if (point_distance(x, y, oCharacter.x, y) > 400)
        maxspeed = 4
    if (point_distance(x, y, oCharacter.x, y) > 500)
        maxspeed = 6
    if (x < 560)
        hspeed = lerp(maxspeed, hspeed, 0.1)
    else
    {
        state = 3
        statetime = 0
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        switch phase
        {
            case 0:
                height_target_front = 35
                height_target_back = 35
                break
            case 1:
                height_target_front = 15
                height_target_back = 25
                break
            case 2:
                height_target_front = 15
                height_target_back = 15
                break
            case 3:
                height_target_front = 55
                height_target_back = 30
                break
            case 4:
                height_target_front = 15
                height_target_back = 15
                break
            case 5:
                height_target_front = 20
                height_target_back = 25
                break
        }

        head_obj.canbehit = 1
    }
    head_target_x = ((x + neck_x) + 50)
    head_target_y = ((y + neck_y) - 10)
    if (statetime == 120)
    {
        if (phase == 5)
            state = 10
        else
            state = 4
        statetime = 0
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
        head_obj.canbehit = 1
        height_target_front = 20
        head_target_x = ((x + neck_x) + 38)
        head_target_y = ((y + neck_y) + 12)
        switch phase
        {
            case 0:
                height_target_front = 20
                height_target_back = 35
                break
            case 1:
                height_target_front = 15
                height_target_back = 25
                break
            case 2:
                height_target_front = 15
                height_target_back = 15
                break
            case 3:
                height_target_front = 55
                height_target_back = 30
                break
            case 4:
                height_target_front = 15
                height_target_back = 15
                break
            case 5:
                height_target_front = 15
                height_target_back = 15
                break
        }

        head_attacks = 2
        head_obj.speedmulti = 1
        head_obj.attackdelay = 110
        if (head_obj.myhealth <= ((head_obj.starthealth / 4) * 3))
        {
            head_attacks = 3
            head_obj.speedmulti = 1.5
            head_obj.attackdelay = 90
        }
        if (head_obj.myhealth <= ((head_obj.starthealth / 4) * 2))
        {
            head_attacks = 4
            head_obj.speedmulti = 2
            head_obj.attackdelay = 70
        }
        if (head_obj.myhealth <= (head_obj.starthealth / 4))
        {
            head_attacks = 5
            head_obj.speedmulti = 2.5
            head_obj.attackdelay = 50
        }
    }
    if (statetime == 10)
    {
        head_obj.state = 4
        head_obj.statetime = 0
        head_attacks -= 1
    }
    if (statetime == 45)
        head_target_snap = 0
    if (statetime == 11)
    {
        head_target_y = ((y + neck_y) + 13)
        if (phase == 1 || phase == 2)
        {
            if (choose(0, 1) == 0)
            {
                if (phase == 1)
                    head_target_y = ((y + neck_y) - 15)
                else
                    head_target_y = ((y + neck_y) - 10)
            }
            else
                head_target_y = ((y + neck_y) + 38)
        }
    }
    if (statetime > 10 && head_obj.state == 0)
    {
        head_target_x = ((x + neck_x) + 24)
        head_target_snap = 1
        if (head_attacks > 0)
            statetime = 1
    }
    if (statetime == 170)
    {
        state = 8
        statetime = 0
    }
    with (oCharacter)
    {
        if (state == 41)
            xVel = 4
    }
}
if (state == 8)
{
    if (phase == 3 && global.difficulty != 0)
    {
        if (statetime == 0)
        {
            height_target_front = 15
            height_target_back = 15
            targetx = (phasetargetx[phase] - 40)
            maxspeed = 1
            sfx_play(sndQueenRoar)
            head_obj.canbehit = 0
            head_obj.push = 0
            head_obj.state = 6
            head_obj.statetime = 0
        }
        head_target_x = ((x + neck_x) + 40)
        head_target_y = ((y + neck_y) - 10)
        if (statetime == 210)
        {
            state = 5
            statetime = 0
        }
    }
    else
    {
        state = 5
        statetime = 0
    }
}
if (state == 5)
{
    if (statetime == 0)
    {
        switch phase
        {
            case 0:
                height_target_front = 35
                height_target_back = 35
                break
            case 1:
                height_target_front = 15
                height_target_back = 25
                break
            case 2:
                height_target_front = 15
                height_target_back = 15
                break
            case 3:
                height_target_front = 25
                height_target_back = 20
                break
            case 4:
                height_target_front = 15
                height_target_back = 15
                break
            case 5:
                height_target_front = 15
                height_target_back = 15
                break
        }

        targetx = (phasetargetx[phase] - 88)
        maxspeed = 1
        sfx_play(sndQueenRoar)
        head_obj.canbehit = 0
        head_obj.push = 0
    }
    head_target_x = ((x + neck_x) + 50)
    head_target_y = ((y + neck_y) + 20)
    if (statetime > 60)
    {
        if (phase == 1)
            head_target_y = ((y + neck_y) - 30)
        if (phase == 2)
            head_target_y = ((y + neck_y) - 5)
    }
    if (statetime == 120)
    {
        head_obj.state = 2
        head_obj.statetime = 0
    }
    if (statetime == 180)
        targetx = phasetargetx[phase]
    if (phase == 3 && statetime == 230)
    {
        height_target_back = 20
        height_target_front = 55
    }
    if (statetime == 360)
    {
        state = 4
        statetime = -1
    }
}
if (state == 6)
{
    if (statetime == 0)
    {
        if oMusicV2.useMultistageMusic
        {
            switch phase
            {
                case 0:
                    mus_stop(musQueenIntro)
                    with (oMusicV2)
                        alarm[5] = -1
                    mus_stop(musQueen)
                    mus_play_once(musQueenBreak)
                    oMusicV2.bossbgm = 346
                    break
                case 2:
                    mus_stop(musQueen2)
                    mus_play_once(musQueenBreak)
                    oMusicV2.bossbgm = 346
                    break
            }

        }
        switch phase
        {
            case 0:
                height_target_front = 35
                height_target_back = 35
                break
            case 1:
                height_target_front = 15
                height_target_back = 25
                break
            case 2:
                height_target_front = 15
                height_target_back = 15
                break
            case 3:
                height_target_front = 45
                height_target_back = 30
                break
            case 4:
                height_target_front = 15
                height_target_back = 15
                break
            case 5:
                height_target_front = 15
                height_target_back = 15
                break
        }

        head_target_snap = 1
        targetx = phasetargetx[phase]
        head_obj.canbehit = 0
        head_obj.push = 0
    }
    head_target_x = ((x + neck_x) + 30)
    head_target_y = (y + neck_y)
    if (statetime < 120 && head_obj.state != 3)
    {
        if (head_obj.state == 0)
        {
            head_obj.state = 3
            head_obj.statetime = 0
        }
    }
    if (statetime == 400)
    {
        state = 7
        statetime = 0
    }
    if (statetime > 120 && point_distance(oQueen.x, oQueen.y, oCharacter.x, oQueen.y) > 350)
    {
        state = 7
        statetime = 0
        head_obj.state = 0
        head_obj.statetime = 0
        head_obj.jawglowalpha = 0
    }
}
if (state == 7)
{
    if (statetime == 0)
    {
        height_target_front = 25
        height_target_back = 25
        head_obj.push = 1
        targetx = phasetargetx[phase]
    }
    head_obj.canbehit = 0
    if (point_distance(x, y, oCharacter.x, y) < 260)
    {
        head_target_x = (oCharacter.x - 60)
        head_target_y = (oCharacter.y - 30)
    }
    else
    {
        head_target_x = ((x + neck_x) + 50)
        head_target_y = (y + neck_y)
    }
    with (oCharacter)
    {
        if (state == 41)
        {
            xVel = 4
            if (statetime == 1)
                yVel = -4.5
        }
    }
    if (x == targetx)
    {
        state = 3
        statetime = -1
        oQueenHead.myhealth = oQueenHead.starthealthcorridors
        if (phase == 3)
            oQueenHead.myhealth = oQueenHead.starthealthbigroom
        if (phase == 4)
        {
            phase = 5
            oQueenHead.myhealth = oQueenHead.starthealthlast
        }
    }
    maxspeed = 1
    if (point_distance(x, y, oCharacter.x, y) > 400)
        maxspeed = 2
    if (point_distance(x, y, oCharacter.x, y) > 460)
        maxspeed = 3
}
if (state == 10)
{
    if (statetime == 0)
    {
        height_target_front = 20
        head_target_x = ((x + neck_x) + 30)
        head_target_y = (y + neck_y)
        head_obj.state = 10
        head_obj.statetime = 0
        head_obj.canbehit = 1
        sfx_play(sndQueenRoarShort)
    }
    if (statetime == 60)
        sfx_play(sndQueenAttack)
    if (statetime > 60)
    {
        head_target_x = max(784, (oCharacter.x - 60))
        head_target_y = (oCharacter.y - 38)
        if (oCharacter.state == 53 || oCharacter.state == 54 || oCharacter.state == 55)
        {
            head_target_x = ((x + neck_x) + 40)
            head_target_y = ((y + neck_y) + 20)
        }
    }
    if (statetime == 300 && (oCharacter.state == 53 || oCharacter.state == 54))
    {
        head_obj.state = 11
        head_obj.statetime = 0
        state = 3
        statetime = 0
    }
}
if (state == 100)
{
    if (statetime == 0)
    {
        height_target_front = 10
        height_target_back = 10
        head_obj.push = 0
        head_obj.canhit = 0
        head_obj.state = 100
        head_obj.statetime = 0
        leg1f_obj.canhit = 0
        leg1b_obj.canhit = 0
        head_target_x = ((x + neck_x) + 40)
        head_target_y = ((y + neck_y) + 5)
        alarm[9] = 1
        alarm[10] = 300
        head_obj.alarm[9] = 1
        head_obj.alarm[10] = 280
        canhit = 0
        mus_fadeout(musQueen)
        mus_fadeout(musQueen3)
        oMusicV2.bossbgm = 0
        sfx_play(sndQueenDeath)
        global.event[303] = 1
    }
    if (statetime > 40)
    {
        if (head_target_y < 160)
            head_target_y += 2
    }
}
if (x != targetx)
{
    if (targetx > x && hspeed < maxspeed)
        hspeed += 0.1
    if (targetx < x && hspeed > (-maxspeed))
        hspeed -= 0.1
    if (point_distance(x, y, targetx, y) <= maxspeed)
    {
        x = targetx
        hspeed = 0
    }
}
height_front = (height_target_front + (sin(sin_timer) * 2))
height_back = (height_target_back + (sin((sin_timer + 10)) * 2))
sin_timer += 0.06
if (sin_timer > 99999999)
    sin_timer = 0
statetime += 1
