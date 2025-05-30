var i, arrDraw, arrRoom, arrRoomPrev, arrSAX;
sameRoomSAX = 0
if audio_is_playing(musFanfare)
    exit
if global.spectator
    exit
if instance_exists(oClient)
{
    if (ds_list_size(oClient.roomListData) > 0)
    {
        for (i = 0; i < ds_list_size(oClient.roomListData); i++)
        {
            arrDraw = ds_list_find_value(oClient.roomListData, i)
            arrRoom = arrDraw[14]
            arrRoomPrev = arrDraw[18]
            arrSAX = arrDraw[20]
            if (arrSAX && (!global.sax) && room != rm_transition && (arrRoom == room || (arrRoom == global.lastroom && (room == rm_options || room == itemroom || room == subscreenroom || room == maproom || room == rm_subscreen)) || ((arrRoomPrev == room || (arrRoomPrev == global.lastroom && (room == rm_options || room == itemroom || room == subscreenroom || room == maproom || room == rm_subscreen))) && (arrRoom == 6 || arrRoom == 10 || arrRoom == 9 || arrRoom == 11 || arrRoom == 16))))
                sameRoomSAX = 1
        }
    }
}
if (global.showHealthIndicators && global.saxmode)
    chasedBySAX = 1
else
    chasedBySAX = 0
if ((!global.spectator) && global.saxmode && (!global.sax) && (global.showHealthIndicators || global.enemyNearby || global.escapeTimer > 0 || global.inMusSAXRange || sameRoomSAX || chasedBySAX))
    playingSAX = 1
else
    playingSAX = 0
if (global.sax && (!prevChasedBySAX) && chasedBySAX)
{
    with (oClient)
        event_user(8)
}
if (prevPlayingSAX != playingSAX)
{
    if ((!prevPlayingSAX) && playingSAX && runningFromSAX && (!chasedBySAX) && (room != rm_score || room != rm_credits) && (!global.juggActive))
    {
        if audio_is_playing(oMusicV2.previousbgm)
            audio_sound_gain(oMusicV2.previousbgm, 0, fadeoutTimer)
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, 0, fadeoutTimer)
        if (!audio_is_playing(musSAXEnvironmentalAmbience))
            audio_play_sound(musSAXEnvironmentalAmbience, 1, true)
        audio_sound_gain(musSAXEnvironmentalAmbience, 0, 0)
        audio_sound_gain(musSAXEnvironmentalAmbience, (global.opmusicvolume / 100), fadeoutTimer)
    }
    else if ((!prevPlayingSAX) && playingSAX && runningFromSAX && (!chasedBySAX) && (room != rm_score || room != rm_credits) && global.juggActive)
    {
        if audio_is_playing(oMusicV2.previousbgm)
            audio_sound_gain(oMusicV2.previousbgm, 0, fadeoutTimer)
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, 0, fadeoutTimer)
        if (!audio_is_playing(musSAXJuggEnvironmentalAmbience))
            audio_play_sound(musSAXJuggEnvironmentalAmbience, 1, true)
        audio_sound_gain(musSAXJuggEnvironmentalAmbience, 0, 0)
        audio_sound_gain(musSAXJuggEnvironmentalAmbience, (global.opmusicvolume / 100), fadeoutTimer)
    }
    if (prevPlayingSAX && (!playingSAX) && (!chasedBySAX) && (room != rm_score || room != rm_credits) && (!global.juggActive))
    {
        if audio_is_playing(musSAXEnvironmentalAmbience)
            audio_sound_gain(musSAXEnvironmentalAmbience, 0, fadeoutTimer)
        if (!audio_is_playing(oMusicV2.currentbgm))
            audio_play_sound(oMusicV2.currentbgm, 1, true)
        if (audio_sound_get_gain(oMusicV2.currentbgm) == 0 || audio_sound_get_gain(oMusicV2.currentbgm) == 0)
        {
            audio_sound_gain(oMusicV2.currentbgm, 0, 0)
            audio_sound_gain(oMusicV2.currentbgm, (global.opmusicvolume / 100), fadeoutTimer)
        }
    }
    else if (prevPlayingSAX && (!playingSAX) && (!chasedBySAX) && (room != rm_score || room != rm_credits) && global.juggActive)
    {
        if audio_is_playing(musSAXJuggEnvironmentalAmbience)
            audio_sound_gain(musSAXJuggEnvironmentalAmbience, 0, fadeoutTimer)
        if (!audio_is_playing(oMusicV2.currentbgm))
            audio_play_sound(oMusicV2.currentbgm, 1, true)
        if (audio_sound_get_gain(oMusicV2.currentbgm) == 0 || audio_sound_get_gain(oMusicV2.currentbgm) == 0)
        {
            audio_sound_gain(oMusicV2.currentbgm, 0, 0)
            audio_sound_gain(oMusicV2.currentbgm, (global.opmusicvolume / 100), fadeoutTimer)
        }
    }
    prevPlayingSAX = playingSAX
}
if (prevSameRoomSAX != sameRoomSAX)
{
    if playingSAX
    {
        if ((!prevSameRoomSAX) && sameRoomSAX && (!chasedBySAX) && (room != rm_score || room != rm_credits) && (!global.juggActive))
        {
            if audio_is_playing(oMusicV2.previousbgm)
                audio_sound_gain(oMusicV2.previousbgm, 0, 0)
            if audio_is_playing(oMusicV2.currentbgm)
                audio_sound_gain(oMusicV2.currentbgm, 0, 0)
            if audio_is_playing(musSAXEnvironmentalAmbience)
                audio_sound_gain(musSAXEnvironmentalAmbience, 0, fadeoutTimer)
            if (!audio_is_playing(musSAXAppear))
                audio_play_sound(musSAXAppear, 1, true)
            audio_sound_gain(musSAXAppear, 0, 0)
            audio_sound_gain(musSAXAppear, (global.opmusicvolume / 100), 0)
            mus_stop_all()
        }
        else if ((!prevSameRoomSAX) && sameRoomSAX && (!chasedBySAX) && (room != rm_score || room != rm_credits) && global.juggActive)
        {
            if audio_is_playing(oMusicV2.previousbgm)
                audio_sound_gain(oMusicV2.previousbgm, 0, 0)
            if audio_is_playing(oMusicV2.currentbgm)
                audio_sound_gain(oMusicV2.currentbgm, 0, 0)
            if audio_is_playing(musSAXJuggEnvironmentalAmbience)
                audio_sound_gain(musSAXJuggEnvironmentalAmbience, 0, fadeoutTimer)
            if (!audio_is_playing(musSAXJuggAppear))
                audio_play_sound(musSAXJuggAppear, 1, true)
            audio_sound_gain(musSAXJuggAppear, 0, 0)
            audio_sound_gain(musSAXJuggAppear, (global.opmusicvolume / 100), 0)
            mus_stop_all()
        }
        if (prevSameRoomSAX && (!sameRoomSAX) && (!chasedBySAX) && (room != rm_score || room != rm_credits) && (!global.juggActive))
        {
            if audio_is_playing(musSAXAppear)
                audio_sound_gain(musSAXAppear, 0, fadeoutTimer)
            if (!audio_is_playing(musSAXEnvironmentalAmbience))
                audio_play_sound(musSAXEnvironmentalAmbience, 1, true)
            audio_sound_gain(musSAXEnvironmentalAmbience, 0, 0)
            audio_sound_gain(musSAXEnvironmentalAmbience, (global.opmusicvolume / 100), fadeoutTimer)
            runningFromSAX = 1
        }
        else if (prevSameRoomSAX && (!sameRoomSAX) && (!chasedBySAX) && (room != rm_score || room != rm_credits) && global.juggActive)
        {
            if audio_is_playing(musSAXJuggAppear)
                audio_sound_gain(musSAXJuggAppear, 0, fadeoutTimer)
            if (!audio_is_playing(musSAXJuggEnvironmentalAmbience))
                audio_play_sound(musSAXJuggEnvironmentalAmbience, 1, true)
            audio_sound_gain(musSAXJuggEnvironmentalAmbience, 0, 0)
            audio_sound_gain(musSAXJuggEnvironmentalAmbience, (global.opmusicvolume / 100), fadeoutTimer)
            runningFromSAX = 1
        }
    }
    prevSameRoomSAX = sameRoomSAX
}
if sameRoomSAX
{
    if audio_is_playing(oMusicV2.previousbgm)
        audio_sound_gain(oMusicV2.previousbgm, 0, 0)
    if audio_is_playing(oMusicV2.currentbgm)
        audio_sound_gain(oMusicV2.currentbgm, 0, 0)
}
if (prevChasedBySAX != chasedBySAX)
{
    if ((!prevChasedBySAX) && chasedBySAX && (room != rm_score || room != rm_credits) && (!global.juggActive))
    {
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, 0, 0)
        if audio_is_playing(musSAXEnvironmentalAmbience)
            audio_sound_gain(musSAXEnvironmentalAmbience, 0, 0)
        if audio_is_playing(musSAXAppear)
            audio_sound_gain(musSAXAppear, 0, 0)
        if audio_is_playing(musSAXChase)
            audio_stop_sound(musSAXChase)
        if (!audio_is_playing(musSAXChase))
            audio_play_sound(musSAXChase, 1, true)
        audio_sound_gain(musSAXChase, 0, 0)
        audio_sound_gain(musSAXChase, (global.opmusicvolume / 100), 0)
    }
    else if ((!prevChasedBySAX) && chasedBySAX && (room != rm_score || room != rm_credits) && global.juggActive)
    {
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, 0, 0)
        if audio_is_playing(musSAXJuggEnvironmentalAmbience)
            audio_sound_gain(musSAXJuggEnvironmentalAmbience, 0, 0)
        if audio_is_playing(musSAXJuggAppear)
            audio_sound_gain(musSAXJuggAppear, 0, 0)
        if audio_is_playing(musSAXJuggChase)
            audio_stop_sound(musSAXJuggChase)
        if (!audio_is_playing(musSAXJuggChase))
            audio_play_sound(musSAXJuggChase, 1, true)
        audio_sound_gain(musSAXJuggChase, 0, 0)
        audio_sound_gain(musSAXJuggChase, (global.opmusicvolume / 100), 0)
    }
    if (prevChasedBySAX && (!chasedBySAX) && (!global.juggActive))
    {
        audio_sound_gain(musSAXChase, 0, fadeoutTimer)
        if playingSAX
        {
            if (sameRoomSAX && (room != rm_score || room != rm_credits))
            {
                if audio_is_playing(oMusicV2.previousbgm)
                    audio_sound_gain(oMusicV2.previousbgm, 0, 0)
                if audio_is_playing(oMusicV2.currentbgm)
                    audio_sound_gain(oMusicV2.currentbgm, 0, 0)
                if audio_is_playing(musSAXEnvironmentalAmbience)
                    audio_sound_gain(musSAXEnvironmentalAmbience, 0, fadeoutTimer)
                if (!audio_is_playing(musSAXAppear))
                    audio_play_sound(musSAXAppear, 1, true)
                audio_sound_gain(musSAXAppear, 0, 0)
                audio_sound_gain(musSAXAppear, (global.opmusicvolume / 100), 0)
            }
            else
            {
                if audio_is_playing(oMusicV2.previousbgm)
                    audio_sound_gain(oMusicV2.previousbgm, 0, 0)
                if audio_is_playing(oMusicV2.currentbgm)
                    audio_sound_gain(oMusicV2.currentbgm, 0, 0)
                if audio_is_playing(musSAXAppear)
                    audio_sound_gain(musSAXAppear, 0, fadeoutTimer)
                if ((!audio_is_playing(musSAXEnvironmentalAmbience)) && (room != rm_score || room != rm_credits))
                    audio_play_sound(musSAXEnvironmentalAmbience, 1, true)
                audio_sound_gain(musSAXEnvironmentalAmbience, 0, 0)
                audio_sound_gain(musSAXEnvironmentalAmbience, (global.opmusicvolume / 100), fadeoutTimer)
            }
        }
        else
        {
            audio_stop_sound(musSAXEnvironmentalAmbience)
            audio_stop_sound(musSAXAppear)
            audio_stop_sound(musSAXChase)
            audio_stop_sound(musSAXJuggEnvironmentalAmbience)
            audio_stop_sound(musSAXJuggAppear)
            audio_stop_sound(musSAXJuggChase)
            if audio_is_playing(oMusicV2.currentbgm)
                audio_sound_gain(oMusicV2.currentbgm, (global.opmusicvolume / 100), fadeoutTimer)
        }
    }
    else if (prevChasedBySAX && (!chasedBySAX) && global.juggActive)
    {
        audio_sound_gain(musSAXChase, 0, fadeoutTimer)
        if playingSAX
        {
            if (sameRoomSAX && (room != rm_score || room != rm_credits))
            {
                if audio_is_playing(oMusicV2.previousbgm)
                    audio_sound_gain(oMusicV2.previousbgm, 0, 0)
                if audio_is_playing(oMusicV2.currentbgm)
                    audio_sound_gain(oMusicV2.currentbgm, 0, 0)
                if audio_is_playing(musSAXJuggEnvironmentalAmbience)
                    audio_sound_gain(musSAXJuggEnvironmentalAmbience, 0, fadeoutTimer)
                if (!audio_is_playing(musSAXJuggAppear))
                    audio_play_sound(musSAXJuggAppear, 1, true)
                audio_sound_gain(musSAXJuggAppear, 0, 0)
                audio_sound_gain(musSAXJuggAppear, (global.opmusicvolume / 100), 0)
            }
            else
            {
                if audio_is_playing(oMusicV2.previousbgm)
                    audio_sound_gain(oMusicV2.previousbgm, 0, 0)
                if audio_is_playing(oMusicV2.currentbgm)
                    audio_sound_gain(oMusicV2.currentbgm, 0, 0)
                if audio_is_playing(musSAXJuggAppear)
                    audio_sound_gain(musSAXJuggAppear, 0, fadeoutTimer)
                if ((!audio_is_playing(musSAXJuggEnvironmentalAmbience)) && (room != rm_score || room != rm_credits))
                    audio_play_sound(musSAXJuggEnvironmentalAmbience, 1, true)
                audio_sound_gain(musSAXJuggEnvironmentalAmbience, 0, 0)
                audio_sound_gain(musSAXJuggEnvironmentalAmbience, (global.opmusicvolume / 100), fadeoutTimer)
            }
        }
        else
        {
            audio_stop_sound(musSAXJuggEnvironmentalAmbience)
            audio_stop_sound(musSAXJuggAppear)
            audio_stop_sound(musSAXJuggChase)
            audio_stop_sound(musSAXEnvironmentalAmbience)
            audio_stop_sound(musSAXAppear)
            audio_stop_sound(musSAXChase)
            if audio_is_playing(oMusicV2.currentbgm)
                audio_sound_gain(oMusicV2.currentbgm, (global.opmusicvolume / 100), fadeoutTimer)
        }
    }
    prevChasedBySAX = chasedBySAX
}
if (!global.juggActive)
{
    if (global.inMusSAXRangePrev != global.inMusSAXRange)
    {
        if (global.inMusSAXRangePrev && (!global.inMusSAXRange))
        {
            if (audio_is_playing(musSAXEnvironmentalAmbience) && (room != rm_score || room != rm_credits))
                audio_sound_gain(musSAXEnvironmentalAmbience, 0, fadeoutTimer)
            if audio_is_playing(musSAXAppear)
                audio_sound_gain(musSAXAppear, 0, fadeoutTimer)
            stopSAXMusTimer = 120
            if runningFromSAX
                runningFromSAX = 0
        }
        global.inMusSAXRangePrev = global.inMusSAXRange
    }
    if (((audio_is_playing(musSAXEnvironmentalAmbience) && audio_sound_get_gain(musSAXEnvironmentalAmbience) > 0) || (audio_is_playing(musSAXAppear) && audio_sound_get_gain(musSAXAppear) > 0) || audio_is_playing(musSAXChase)) && playingSAX)
    {
        if audio_is_playing(oMusicV2.previousbgm)
            audio_sound_gain(oMusicV2.previousbgm, 0, fadeoutTimer)
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, 0, fadeoutTimer)
    }
    if (stopSAXMusTimer > 0)
    {
        if (stopSAXMusTimer == 1)
        {
            if audio_is_playing(musSAXEnvironmentalAmbience)
                audio_stop_sound(musSAXEnvironmentalAmbience)
            if audio_is_playing(musSAXAppear)
                audio_stop_sound(musSAXAppear)
            if audio_is_playing(oMusicV2.currentbgm)
                audio_sound_gain(oMusicV2.currentbgm, (global.opmusicvolume / 100), fadeoutTimer)
        }
        stopSAXMusTimer--
    }
    if (audio_is_playing(musSAXChase) && audio_sound_get_gain(musSAXChase) == 0)
    {
        audio_stop_sound(musSAXChase)
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, (global.opmusicvolume / 100), fadeoutTimer)
    }
}
else if global.juggActive
{
    if (global.inMusSAXRangePrev != global.inMusSAXRange)
    {
        if (global.inMusSAXRangePrev && (!global.inMusSAXRange))
        {
            if (audio_is_playing(musSAXEnvironmentalAmbience) && (room != rm_score || room != rm_credits))
                audio_sound_gain(musSAXEnvironmentalAmbience, 0, fadeoutTimer)
            if audio_is_playing(musSAXAppear)
                audio_sound_gain(musSAXAppear, 0, fadeoutTimer)
            stopSAXMusTimer = 120
            if runningFromSAX
                runningFromSAX = 0
        }
        global.inMusSAXRangePrev = global.inMusSAXRange
    }
    if (((audio_is_playing(musSAXEnvironmentalAmbience) && audio_sound_get_gain(musSAXEnvironmentalAmbience) > 0) || (audio_is_playing(musSAXAppear) && audio_sound_get_gain(musSAXAppear) > 0) || audio_is_playing(musSAXChase)) && playingSAX)
    {
        if audio_is_playing(oMusicV2.previousbgm)
            audio_sound_gain(oMusicV2.previousbgm, 0, fadeoutTimer)
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, 0, fadeoutTimer)
    }
    if (stopSAXMusTimer > 0)
    {
        if (stopSAXMusTimer == 1)
        {
            if audio_is_playing(musSAXEnvironmentalAmbience)
                audio_stop_sound(musSAXEnvironmentalAmbience)
            if audio_is_playing(musSAXAppear)
                audio_stop_sound(musSAXAppear)
            if audio_is_playing(oMusicV2.currentbgm)
                audio_sound_gain(oMusicV2.currentbgm, (global.opmusicvolume / 100), fadeoutTimer)
        }
        stopSAXMusTimer--
    }
    if (audio_is_playing(musSAXChase) && audio_sound_get_gain(musSAXChase) == 0)
    {
        audio_stop_sound(musSAXChase)
        if audio_is_playing(oMusicV2.currentbgm)
            audio_sound_gain(oMusicV2.currentbgm, (global.opmusicvolume / 100), fadeoutTimer)
    }
}
