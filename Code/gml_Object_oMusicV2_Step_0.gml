sameRoomSAX = 0;

if (audio_is_playing(musFanfare))
    exit;

if (global.spectator)
    exit;

if (instance_exists(oClient))
{
    if (ds_list_size(oClient.roomListData) > 0)
    {
        for (var i = 0; i < ds_list_size(oClient.roomListData); i++)
        {
            var arrDraw = ds_list_find_value(oClient.roomListData, i);
            var arrRoom = arrDraw[14];
            var arrRoomPrev = arrDraw[18];
            var arrSAX = arrDraw[20];
            
            if (arrSAX && !global.sax && room != rm_transition && (arrRoom == room || (arrRoom == global.lastroom && (room == rm_options || room == itemroom || room == subscreenroom || room == maproom || room == rm_subscreen)) || ((arrRoomPrev == room || (arrRoomPrev == global.lastroom && (room == rm_options || room == itemroom || room == subscreenroom || room == maproom || room == rm_subscreen))) && (arrRoom == 6 || arrRoom == 10 || arrRoom == 9 || arrRoom == 11 || arrRoom == 16))))
                sameRoomSAX = 1;
        }
    }
}

if (global.showHealthIndicators && global.saxmode)
    chasedBySAX = 1;
else
    chasedBySAX = 0;

if (!global.spectator && global.saxmode && !global.sax && (global.showHealthIndicators || global.enemyNearby || global.escapeTimer > 0 || global.inMusSAXRange || sameRoomSAX || chasedBySAX))
    playingSAX = 1;
else
    playingSAX = 0;

if (global.sax && !prevChasedBySAX && chasedBySAX)
{
    with (oClient)
        event_user(8);
}

var oldSaxMusicAppear = 413;
var oldSaxMusicChase = 414;
var oldSaxMusicEnv = 412;
var saxMusicEnv, saxMusicAppear, saxMusicChase;

if (!global.juggActive)
{
    saxMusicAppear = 413;
    saxMusicChase = 414;
    saxMusicEnv = 412;
}

if (global.juggActive)
{
    saxMusicAppear = 420;
    saxMusicChase = 421;
    saxMusicEnv = 422;
    
    if (!audio_is_playing(saxMusicAppear) && audio_is_playing(oldSaxMusicAppear))
    {
        audio_play_sound(saxMusicAppear, 1, false);
        audio_sound_gain(saxMusicAppear, 0, 0);
        audio_sound_gain(saxMusicAppear, global.opmusicvolume / 100, 0);
    }
    
    if (!audio_is_playing(saxMusicChase) && audio_is_playing(oldSaxMusicChase))
    {
        audio_play_sound(saxMusicChase, 1, false);
        audio_sound_gain(saxMusicChase, 0, 0);
        audio_sound_gain(saxMusicChase, global.opmusicvolume / 100, 0);
    }
    
    if (!audio_is_playing(saxMusicEnv) && audio_is_playing(oldSaxMusicEnv))
    {
        audio_play_sound(saxMusicEnv, 1, false);
        audio_sound_gain(saxMusicEnv, 0, 0);
        audio_sound_gain(saxMusicEnv, global.opmusicvolume / 100, 0);
    }
    
    audio_stop_sound(oldSaxMusicChase);
    audio_stop_sound(oldSaxMusicAppear);
    audio_stop_sound(oldSaxMusicEnv);
}

if (prevPlayingSAX != playingSAX)
{
    if (!prevPlayingSAX && playingSAX && runningFromSAX && !chasedBySAX && (room != rm_score || room != rm_credits))
    {
        if (audio_is_playing(oMusicV2.previousbgm))
            audio_sound_gain(oMusicV2.previousbgm, 0, fadeoutTimer);
        
        if (audio_is_playing(oMusicV2.currentbgm))
            audio_sound_gain(oMusicV2.currentbgm, 0, fadeoutTimer);
        
        if (!audio_is_playing(saxMusicEnv))
            audio_play_sound(saxMusicEnv, 1, true);
        
        audio_sound_gain(saxMusicEnv, 0, 0);
        audio_sound_gain(saxMusicEnv, global.opmusicvolume / 100, fadeoutTimer);
    }
    
    if (prevPlayingSAX && !playingSAX && !chasedBySAX && (room != rm_score || room != rm_credits))
    {
        if (audio_is_playing(saxMusicEnv))
            audio_sound_gain(saxMusicEnv, 0, fadeoutTimer);
        
        if (!audio_is_playing(oMusicV2.currentbgm))
            audio_play_sound(oMusicV2.currentbgm, 1, true);
        
        if (audio_sound_get_gain(oMusicV2.currentbgm) == 0 || audio_sound_get_gain(oMusicV2.currentbgm) == 0)
        {
            audio_sound_gain(oMusicV2.currentbgm, 0, 0);
            audio_sound_gain(oMusicV2.currentbgm, global.opmusicvolume / 100, fadeoutTimer);
        }
    }
    
    prevPlayingSAX = playingSAX;
}

if (prevSameRoomSAX != sameRoomSAX)
{
    if (playingSAX)
    {
        if (!prevSameRoomSAX && sameRoomSAX && !chasedBySAX && (room != rm_score || room != rm_credits))
        {
            if (audio_is_playing(oMusicV2.previousbgm))
                audio_sound_gain(oMusicV2.previousbgm, 0, 0);
            
            if (audio_is_playing(oMusicV2.currentbgm))
                audio_sound_gain(oMusicV2.currentbgm, 0, 0);
            
            if (audio_is_playing(saxMusicEnv))
                audio_sound_gain(saxMusicEnv, 0, fadeoutTimer);
            
            if (!audio_is_playing(saxMusicAppear))
            {
                mus_stop_all();
                audio_play_sound(saxMusicAppear, 1, true);
            }
            
            audio_sound_gain(saxMusicAppear, 0, 0);
            audio_sound_gain(saxMusicAppear, global.opmusicvolume / 100, 0);
        }
        
        if (prevSameRoomSAX && !sameRoomSAX && !chasedBySAX && (room != rm_score || room != rm_credits))
        {
            if (audio_is_playing(saxMusicAppear))
                audio_sound_gain(saxMusicAppear, 0, fadeoutTimer);
            
            if (!audio_is_playing(saxMusicEnv))
                audio_play_sound(saxMusicEnv, 1, true);
            
            audio_sound_gain(saxMusicEnv, 0, 0);
            audio_sound_gain(saxMusicEnv, global.opmusicvolume / 100, fadeoutTimer);
            runningFromSAX = 1;
        }
    }
    
    prevSameRoomSAX = sameRoomSAX;
}

if (sameRoomSAX)
{
    if (audio_is_playing(oMusicV2.previousbgm))
        audio_sound_gain(oMusicV2.previousbgm, 0, 0);
    
    if (audio_is_playing(oMusicV2.currentbgm))
        audio_sound_gain(oMusicV2.currentbgm, 0, 0);
}

if (prevChasedBySAX != chasedBySAX)
{
    if (!prevChasedBySAX && chasedBySAX && (room != rm_score || room != rm_credits))
    {
        if (audio_is_playing(oMusicV2.currentbgm))
            audio_sound_gain(oMusicV2.currentbgm, 0, 0);
        
        if (audio_is_playing(saxMusicEnv))
            audio_sound_gain(saxMusicEnv, 0, 0);
        
        if (audio_is_playing(saxMusicAppear))
            audio_sound_gain(saxMusicAppear, 0, 0);
        
        if (audio_is_playing(saxMusicChase))
            audio_stop_sound(saxMusicChase);
        
        if (!audio_is_playing(saxMusicChase))
            audio_play_sound(saxMusicChase, 1, true);
        
        audio_sound_gain(saxMusicChase, 0, 0);
        audio_sound_gain(saxMusicChase, global.opmusicvolume / 100, 0);
    }
    
    if (prevChasedBySAX && !chasedBySAX)
    {
        audio_sound_gain(saxMusicChase, 0, fadeoutTimer);
        
        if (playingSAX)
        {
            if (sameRoomSAX && (room != rm_score || room != rm_credits))
            {
                if (audio_is_playing(oMusicV2.previousbgm))
                    audio_sound_gain(oMusicV2.previousbgm, 0, 0);
                
                if (audio_is_playing(oMusicV2.currentbgm))
                    audio_sound_gain(oMusicV2.currentbgm, 0, 0);
                
                if (audio_is_playing(saxMusicEnv))
                    audio_sound_gain(saxMusicEnv, 0, fadeoutTimer);
                
                if (!audio_is_playing(saxMusicAppear))
                    audio_play_sound(saxMusicAppear, 1, true);
                
                audio_sound_gain(saxMusicAppear, 0, 0);
                audio_sound_gain(saxMusicAppear, global.opmusicvolume / 100, 0);
            }
            else
            {
                if (audio_is_playing(oMusicV2.previousbgm))
                    audio_sound_gain(oMusicV2.previousbgm, 0, 0);
                
                if (audio_is_playing(oMusicV2.currentbgm))
                    audio_sound_gain(oMusicV2.currentbgm, 0, 0);
                
                if (audio_is_playing(saxMusicAppear))
                    audio_sound_gain(saxMusicAppear, 0, fadeoutTimer);
                
                if (!audio_is_playing(saxMusicEnv) && (room != rm_score || room != rm_credits))
                    audio_play_sound(saxMusicEnv, 1, true);
                
                audio_sound_gain(saxMusicEnv, 0, 0);
                audio_sound_gain(saxMusicEnv, global.opmusicvolume / 100, fadeoutTimer);
            }
        }
        else
        {
            audio_stop_sound(saxMusicEnv);
            audio_stop_sound(saxMusicAppear);
            audio_stop_sound(saxMusicChase);
            
            if (audio_is_playing(oMusicV2.currentbgm))
                audio_sound_gain(oMusicV2.currentbgm, global.opmusicvolume / 100, fadeoutTimer);
        }
    }
    
    prevChasedBySAX = chasedBySAX;
}

if (global.inMusSAXRangePrev != global.inMusSAXRange)
{
    if (global.inMusSAXRangePrev && !global.inMusSAXRange)
    {
        if (audio_is_playing(saxMusicEnv) && (room != rm_score || room != rm_credits))
            audio_sound_gain(saxMusicEnv, 0, fadeoutTimer);
        
        if (audio_is_playing(saxMusicAppear))
            audio_sound_gain(saxMusicAppear, 0, fadeoutTimer);
        
        stopSAXMusTimer = 120;
        
        if (runningFromSAX)
            runningFromSAX = 0;
    }
    
    global.inMusSAXRangePrev = global.inMusSAXRange;
}

if (((audio_is_playing(saxMusicEnv) && audio_sound_get_gain(saxMusicEnv) > 0) || (audio_is_playing(saxMusicAppear) && audio_sound_get_gain(saxMusicAppear) > 0) || audio_is_playing(saxMusicChase)) && playingSAX)
{
    if (audio_is_playing(oMusicV2.previousbgm))
        audio_sound_gain(oMusicV2.previousbgm, 0, fadeoutTimer);
    
    if (audio_is_playing(oMusicV2.currentbgm))
        audio_sound_gain(oMusicV2.currentbgm, 0, fadeoutTimer);
}

if (stopSAXMusTimer > 0)
{
    if (stopSAXMusTimer == 1)
    {
        if (audio_is_playing(saxMusicEnv))
            audio_stop_sound(saxMusicEnv);
        
        if (audio_is_playing(saxMusicAppear))
            audio_stop_sound(saxMusicAppear);
        
        if (audio_is_playing(saxMusicChase))
            audio_stop_sound(saxMusicChase);
        
        if (audio_is_playing(oMusicV2.currentbgm))
            audio_sound_gain(oMusicV2.currentbgm, global.opmusicvolume / 100, fadeoutTimer);
    }
    
    stopSAXMusTimer--;
}

if (audio_is_playing(saxMusicChase) && audio_sound_get_gain(saxMusicChase) == 0)
{
    audio_stop_sound(saxMusicChase);
    
    if (audio_is_playing(oMusicV2.currentbgm))
        audio_sound_gain(oMusicV2.currentbgm, global.opmusicvolume / 100, fadeoutTimer);
}
