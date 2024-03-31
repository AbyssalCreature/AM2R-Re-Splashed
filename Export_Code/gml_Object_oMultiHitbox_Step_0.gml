var findID, i, arrDraw, arrID, arrX, arrY, arrSprite, arrImage, arrState, arrSAX, arrSJBall, arrInvincible;
if instance_exists(oClient)
{
    findID = ds_list_find_index(global.hitboxList, myid)
    if (findID >= 0)
    {
        if (ds_list_size(oClient.roomListData) > 0)
        {
            if (ds_list_find_index(oClient.roomList, myid) < 0)
            {
                ds_list_delete(global.hitboxList, findID)
                instance_destroy()
            }
            for (i = 0; i < ds_list_size(oClient.roomListData); i++)
            {
                arrDraw = ds_list_find_value(oClient.roomListData, i)
                arrID = arrDraw[0]
                if (arrID == myid)
                {
                    arrX = arrDraw[1]
                    arrY = arrDraw[2]
                    arrSprite = arrDraw[3]
                    arrImage = arrDraw[4]
                    arrState = arrDraw[19]
                    arrSAX = arrDraw[20]
                    arrSJBall = arrDraw[22]
                    arrInvincible = arrDraw[27]
                    if (!absorb)
                        x = arrX
                    if (!absorb)
                        y = arrY
                    sax = arrSAX
                    spectator = arrDraw[26]
                    mask_index = sMask1
                    if (arrState == DUCKING)
                        mask_index = sMask3
                    if (arrState == BALL || arrState == AIRBALL || arrState == SPIDERBALL || arrState == WATERJET)
                        mask_index = sMask4
                    if (arrSJBall == 1 && (arrState == SUPERJUMP || arrState == SJSTART || arrState == SJEND || arrState == BRAKING))
                        mask_index = sMask4
                    if (instance_exists(oCharacter) && distance_to_object(oCharacter) <= 500 && arrState == RUNNING && ((abs(arrImage) >= 4 && abs(arrImage) < 4.9) || (abs(arrImage) >= 9 && abs(arrImage) < 9.9)) && arrSAX)
                        PlayFootstepSAX(get_floor_material())
                    if (arrSprite == 1915)
                    {
                        if (place_meeting(x, y, oCharacter) && arrInvincible == 0 && (!global.spectator))
                        {
                            if (!absorb)
                            {
                                PlaySoundMono(sndAbsorbX)
                                with (instance_create(oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)), oAbsorbX))
                                    core = 1
                                relativeX = (x - oCharacter.x)
                                relativeY = (y - (oCharacter.y - (oCharacter.sprite_height / 2)))
                                screwattackpickupfx = oCharacter.fxtimer
                                absorb = 1
                                global.otherAbsorbID = myid
                                global.otherAbsorbRelativeX = oCharacter.x
                                global.otherAbsorbRelativeY = oCharacter.y
                                global.otherAbsorbSpriteHeight = (oCharacter.sprite_height / 2)
                                global.playerhealth += 700
                                if (global.playerhealth > global.maxhealth)
                                    global.playerhealth = global.maxhealth
                                global.missiles += 75
                                if (global.missiles > global.maxmissiles)
                                    global.missiles = global.maxmissiles
                                global.smissiles += 10
                                if (global.smissiles > global.maxsmissiles)
                                    global.smissiles = global.maxsmissiles
                                global.pbombs += 5
                                if (global.pbombs > global.maxpbombs)
                                    global.pbombs = global.maxpbombs
                                with (oClient)
                                    event_user(4)
                            }
                        }
                    }
                }
            }
        }
    }
    else
        instance_destroy()
}
else
    instance_destroy()
if absorb
{
    if (time == 1)
    {
        global.enablecontrol = 0
        with (oCharacter)
        {
            fxtimer = other.screwattackpickupfx
            speedmultiplier = 0
            speedmultiresettimer = 10000
            kLeft = 0
            kRight = 0
            kUp = 0
            kDown = 0
            kJump = 0
            kJumpPressed = 0
            kRun = 0
            kAim = 0
            kFire = 0
            kMissile = 0
            charge = 0
            Mute_Loops()
        }
        with (oFXTrail)
        {
            if (sprite_index == sScrewSpark)
                visible = false
        }
    }
    if (time == 2)
    {
        image_xscale = 1
        image_xscale = 1
        with (oCharacter)
        {
            speedmultiplier = 0
            speedmultiresettimer = 10000
            sfx_stop(sndCoreXIdle)
        }
    }
    if (time > 2 && (!absorbDone))
    {
        x = (oCharacter.x + relativeX)
        y = ((oCharacter.y - (oCharacter.sprite_height / 2)) + relativeY)
        relativeX = lerp(relativeX, 0, 0.1)
        relativeY = lerp(relativeY, 0, 0.1)
        if (image_xscale > 0)
        {
            image_xscale -= 0.0225
            image_yscale -= 0.0225
        }
        if (image_xscale <= 0)
        {
            absorbDone = 1
            with (oCharacter)
                speedmultiresettimer = 0
            global.enablecontrol = 1
            if (global.item[11] == 0)
            {
                global.item[11] = 1
                global.ibeam = 1
            }
            with (instance_find(oFXTrail, (instance_number(oFXTrail) - 1)))
            {
                if (sprite_index == sScrewSpark)
                {
                    visible = true
                    sprite_index = sScrewAttack
                    image_index = other.screwattackpickupframe
                    image_alpha = 1
                    image_angle = other.screwattackpickupangle
                    image_blend = c_white
                    image_xscale = 1
                    image_yscale = 1
                }
            }
        }
    }
    time++
}
