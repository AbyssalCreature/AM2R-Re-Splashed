if queenHealthResetQueued
{
    if (instance_exists(oQueen) && instance_exists(oQueenHead) && (!is_undefined(oQueenHead.myhealth)) && (!is_undefined(oQueen.phase)))
    {
        if (global.queenhealthPrev != queenHealth)
        {
            if (queenHealth == 999999)
            {
                queenHealth = 0
                oQueenHead.myhealth = queenHealth
                if (queenHealth <= 0)
                {
                    with (oQueenHead)
                    {
                        if (myhealth <= 0 && state != 100 && state != 50)
                        {
                            if (oQueen.phase < 3)
                                head_damage = 1
                            if (oQueen.phase == 3)
                                head_damage = 2
                            if (oQueen.phase < 5)
                            {
                                state = 50
                                statetime = 0
                                myhealth = 999999
                                with (oQueen)
                                {
                                    state = 6
                                    statetime = 0
                                }
                            }
                            if (oQueen.phase == 5)
                            {
                                with (oQueen)
                                {
                                    state = 100
                                    statetime = 0
                                }
                                state = 100
                            }
                        }
                    }
                    queenHealth = 999999
                }
            }
        }
        oQueenHead.myhealth = queenHealth
        oQueen.phase = phase
        queenHealthResetQueued = 0
        if (phase >= 1 && instance_exists(147759))
        {
            event_perform_object(oQueenFireball, ev_other, ev_user1)
            oQueen.state = 7
            oQueen.statetime = 0
            with (oQueen)
            {
                head_target_snap = 1
                head_target_x = ((x + neck_x) + 10)
                head_target_y = (y + neck_y)
            }
        }
        if (phase >= 2 && instance_exists(147760) && instance_exists(147755))
        {
            event_perform_object(oQueenFireball, ev_other, ev_user2)
            oQueen.state = 7
            oQueen.statetime = 0
            with (oQueen)
            {
                head_target_snap = 1
                head_target_x = ((x + neck_x) + 10)
                head_target_y = (y + neck_y)
            }
        }
        if (phase >= 3 && instance_exists(147761) && instance_exists(147749))
        {
            event_perform_object(oQueenFireball, ev_other, ev_user3)
            oQueen.state = 7
            oQueen.statetime = 0
            with (oQueen)
            {
                head_target_snap = 1
                head_target_x = ((x + neck_x) + 10)
                head_target_y = (y + neck_y)
            }
        }
        if (phase >= 4 && instance_exists(147762))
        {
            event_perform_object(oQueenFireball, ev_other, ev_user4)
            oQueen.state = 7
            oQueen.statetime = 0
            with (oQueen)
            {
                head_target_snap = 1
                head_target_x = ((x + neck_x) + 10)
                head_target_y = (y + neck_y)
            }
        }
    }
    alarm[1] = 5
}
