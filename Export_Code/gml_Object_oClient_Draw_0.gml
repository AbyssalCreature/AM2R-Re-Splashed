var b, arrDraw, arrID, arrX, arrY, arrSprite, arrImage, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrArmmsl, arrRoom, arrName, arrBlend, arrFXTimer, arrRoomPrev, arrState, arrSAX, arrSpeedboost, arrSJBall, arrSJDir, arrSpeedCharge, arrSpectator, arrInvincible, arrMosaic, arrReform, arrVisible, spacejump, screwattack, spiderball, speedbooster, i, tempArr, ID, canDraw, sprHeight, findID, sax, arrMapIcon, spectator, rectoffset, f, arrList, _x, _y, superjump, sjstart, arrSBall;
if (ds_list_size(roomListData) > 0)
{
    for (b = 0; b < ds_list_size(roomListData); b++)
    {
        arrDraw = ds_list_find_value(roomListData, b)
        arrID = arrDraw[0]
        arrX = arrDraw[1]
        arrY = arrDraw[2]
        arrSprite = arrDraw[3]
        arrImage = arrDraw[4]
        arrA1 = arrDraw[5]
        arrA1X = arrDraw[6]
        arrA1Y = arrDraw[7]
        arrA2 = arrDraw[8]
        arrA2X = arrDraw[9]
        arrA2Y = arrDraw[10]
        arrA2A = arrDraw[11]
        arrMirror = arrDraw[12]
        arrArmmsl = arrDraw[13]
        arrRoom = arrDraw[14]
        arrName = arrDraw[15]
        arrBlend = arrDraw[16]
        arrFXTimer = arrDraw[17]
        arrRoomPrev = arrDraw[18]
        arrState = arrDraw[19]
        arrSAX = arrDraw[20]
        arrSpeedboost = arrDraw[21]
        arrSJBall = arrDraw[22]
        arrSJDir = arrDraw[23]
        arrSpeedCharge = arrDraw[24]
        arrSpectator = arrDraw[26]
        arrInvincible = arrDraw[27]
        arrMosaic = arrDraw[28]
        arrReform = arrDraw[29]
        arrVisible = arrDraw[30]
        arrSBall = arrDraw[31]
        spacejump = global.spacejump
        screwattack = global.screwattack
        spiderball = global.spiderball
        speedbooster = global.speedbooster
        global.otherSAX = arrSAX
        global.otherMosaic = arrMosaic
        global.otherReform = arrReform
        for (i = 0; i < ds_list_size(global.otherPlayerItems); i++)
        {
            tempArr = ds_list_find_value(global.otherPlayerItems, i)
            ID = tempArr[0]
            if (ID == arrID)
            {
                spacejump = tempArr[2]
                screwattack = tempArr[3]
                spiderball = tempArr[4]
                speedbooster = tempArr[5]
            }
        }
        canDraw = 1
        if ((!arrVisible) && (!arrSAX))
            canDraw = 0
        if ((arrRoom == room || arrRoom == 6 || arrRoom == 10 || arrRoom == 9 || arrRoom == 11 || arrRoom == 16) && instance_exists(oCharacter) && room != rm_transition && canDraw)
        {
            if (arrSprite == sSpiderMorphBall || arrSprite == sGSpiderMorphBall || arrSprite == sVSpiderMorphBall || arrSprite == sSpiderMorphBall_fusion || arrSprite == sSpiderMorphBall_fusion_gravity || arrSprite == sSpiderMorphBall_fusion_varia)
            {
                draw_set_blend_mode(bm_add)
                draw_set_alpha((arrFXTimer * 0.1))
                if (global.shaders_compiled && os_type != os_android)
                {
                    pal_swap_set(oControl.SpiderballPalette, arrID, 0)
                    draw_sprite_ext(sSpiderballFX, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                }
                else if (global.shaders_compiled && os_type == os_android)
                {
                    switch arrSprite
                    {
                        case sSpiderMorphBall:
                            draw_sprite_ext(sSpiderballFX, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 1080:
                            draw_sprite_ext(sSpiderballFXVaria, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 912:
                            draw_sprite_ext(sSpiderballFXGravity, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 1208:
                            draw_sprite_ext(sSpiderballFX_fusion, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 1638:
                            draw_sprite_ext(sSpiderballFXVaria_fusion, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 1639:
                            draw_sprite_ext(sSpiderballFXGravity_fusion, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                        case 1850:
                            draw_sprite_ext(sSpiderballFX_fusion, -1, arrX, arrY, 1, 1, 0, -1, (0.2 + (arrFXTimer * 0.1)))
                            break
                    }

                }
                if global.shaders_compiled
                {
                    pal_swap_reset()
                    shader_reset()
                }
                draw_set_alpha(1)
                draw_set_blend_mode(bm_normal)
            }
            if (arrRoom != room)
            {
                if (arrRoomPrev == room)
                {
                    draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, alpha, arrArmmsl, arrImage, arrID)
                    if (arrSpeedboost == 1 || arrSpeedCharge > 0 || arrState == SJSTART || arrState == SUPERJUMP || arrState == SJEND)
                    {
                        if (arrFXTimer == 0 || arrFXTimer == 1)
                        {
                            draw_set_blend_mode(bm_add)
                            draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, (1.1 + (arrFXTimer * 0.2)), arrArmmsl, arrImage, arrID)
                            draw_set_blend_mode(bm_normal)
                        }
                        if (arrFXTimer == 2 || arrFXTimer == 3)
                        {
                            draw_set_blend_mode(bm_add)
                            draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_yellow, alpha, arrArmmsl, arrImage, arrID)
                            draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_white, alpha, arrArmmsl, arrImage, arrID)
                            draw_set_blend_mode(bm_normal)
                        }
                        if (arrFXTimer == 4 || arrFXTimer == 5)
                        {
                            draw_set_blend_mode(bm_add)
                            draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_red, alpha, arrArmmsl, arrImage, arrID)
                            draw_set_blend_mode(bm_normal)
                        }
                    }
                    if (arrInvincible > 0)
                    {
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_blue, (arrFXTimer * 0.2), arrArmmsl, arrImage, arrID)
                        draw_set_blend_mode(bm_add)
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_white, (0.8 - (arrFXTimer * 0.2)), arrArmmsl, arrImage, arrID)
                        draw_set_blend_mode(bm_normal)
                    }
                    sprHeight = sprite_get_height(sIdleRight)
                    if (arrSprite != sTurn && arrSprite != sVTurn && arrSprite != sGTurn && arrSprite != sTurn_fusion && arrSprite != sTurn_fusion_varia && arrSprite != sTurn_fusion_gravity)
                        sprHeight = sprite_get_height(arrSprite)
                    if (string_count("AimUp", sprite_get_name(arrSprite)) > 0)
                        sprHeight = sprite_get_height(sIdleRight)
                    if (string_lower(arrName) == "meep" && string_count("Crouch", sprite_get_name(arrSprite)))
                        sprHeight += 10
                    if (string_lower(arrName) == "omegadruid" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sMOmega_Head_Roar, 2, arrX, (arrY - sprHeight), (0.5 * arrMirror), 0.5, direction, c_white, 1)
                    if (string_lower(arrName) == "meep" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                        draw_sprite_ext(sMiepee, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
                }
            }
            else
            {
                draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, alpha, arrArmmsl, arrImage, arrID)
                if (arrSpeedboost == 1 || arrSpeedCharge > 0 || arrState == SJSTART || arrState == SUPERJUMP || arrState == SJEND)
                {
                    if (arrFXTimer == 0 || arrFXTimer == 1)
                    {
                        draw_set_blend_mode(bm_add)
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrBlend, (1.1 + (arrFXTimer * 0.2)), arrArmmsl, arrImage, arrID)
                        draw_set_blend_mode(bm_normal)
                    }
                    if (arrFXTimer == 2 || arrFXTimer == 3)
                    {
                        draw_set_blend_mode(bm_add)
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_yellow, alpha, arrArmmsl, arrImage, arrID)
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_white, alpha, arrArmmsl, arrImage, arrID)
                        draw_set_blend_mode(bm_normal)
                    }
                    if (arrFXTimer == 4 || arrFXTimer == 5)
                    {
                        draw_set_blend_mode(bm_add)
                        draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_red, alpha, arrArmmsl, arrImage, arrID)
                        draw_set_blend_mode(bm_normal)
                    }
                }
                if (arrInvincible > 0)
                {
                    draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_blue, (arrFXTimer * 0.2), arrArmmsl, arrImage, arrID)
                    draw_set_blend_mode(bm_add)
                    draw_character_ext(arrSprite, arrX, arrY, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, c_white, (0.8 - (arrFXTimer * 0.2)), arrArmmsl, arrImage, arrID)
                    draw_set_blend_mode(bm_normal)
                }
                sprHeight = sprite_get_height(sIdleRight)
                if (arrSprite != sTurn && arrSprite != sVTurn && arrSprite != sGTurn && arrSprite != sTurn_fusion && arrSprite != sTurn_fusion_varia && arrSprite != sTurn_fusion_gravity)
                    sprHeight = sprite_get_height(arrSprite)
                if (string_count("AimUp", sprite_get_name(arrSprite)) > 0)
                    sprHeight = sprite_get_height(sIdleRight)
                if (string_lower(arrName) == "meep" && string_count("Crouch", sprite_get_name(arrSprite)))
                    sprHeight += 10
                if (string_lower(arrName) == "omegadruid" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sMOmega_Head_Roar, 2, arrX, (arrY - sprHeight), (0.5 * arrMirror), 0.5, direction, c_white, 1)
                if (string_lower(arrName) == "meep" && string_count("JumpLeft", sprite_get_name(arrSprite)) == 0 && string_count("JumpRight", sprite_get_name(arrSprite)) == 0 && string_count("Ball", sprite_get_name(arrSprite)) == 0 && string_count("Walljump", sprite_get_name(arrSprite)) == 0 && string_count("Spacejump", sprite_get_name(arrSprite)) == 0)
                    draw_sprite_ext(sMiepee, 2, arrX, (arrY - sprHeight), (1 * arrMirror), 1, direction, c_white, 1)
            }
        }
        superjump = 30
        sjstart = 29
        if (arrRoom == room && room != rm_transition)
        {
            if ((string_count("SJump", sprite_get_name(arrSprite)) > 0 || arrSpeedboost > 0 || arrState == superjump || arrState == sjstart) && arrState != HURT && (!arrSpectator))
            {
                findID = ds_list_find_index(global.speedList, arrID)
                if (findID < 0)
                {
                    ds_list_add(global.speedList, arrID)
                    speedbooster = instance_create(x, y, oSpeedBoost)
                    speedbooster.myid = arrID
                    speedbooster.sax = arrSAX
                    speedbooster.mirror = arrMirror
                    speedbooster.sjball = arrSJBall
                }
            }
            else
            {
                findID = ds_list_find_index(global.speedList, arrID)
                if (findID >= 0)
                    ds_list_delete(global.speedList, findID)
            }
        }
        else
        {
            findID = ds_list_find_index(global.speedList, arrID)
            if (findID >= 0)
                ds_list_delete(global.speedList, findID)
        }
        if (arrRoom == room && room != rm_transition)
        {
            if ((string_count("JumpLeft", sprite_get_name(arrSprite)) > 0 || string_count("JumpRight", sprite_get_name(arrSprite)) > 0 || string_count("Spacejump", sprite_get_name(arrSprite)) > 0) && screwattack)
            {
                findID = ds_list_find_index(global.screwList, arrID)
                if (findID < 0)
                {
                    ds_list_add(global.screwList, arrID)
                    screwattack = instance_create(x, y, oScrewAttack)
                    screwattack.myid = arrID
                    screwattack.sax = arrSAX
                    screwattack.mirror = arrMirror
                }
            }
            else
            {
                findID = ds_list_find_index(global.screwList, arrID)
                if (findID >= 0)
                    ds_list_delete(global.screwList, findID)
            }
        }
        else
        {
            findID = ds_list_find_index(global.screwList, arrID)
            if (findID >= 0)
                ds_list_delete(global.screwList, findID)
        }
        if (arrRoom == room && room != rm_transition)
        {
            findID = ds_list_find_index(global.hitboxList, arrID)
            if (findID < 0)
            {
                ds_list_add(global.hitboxList, arrID)
                hitbox = instance_create(x, y, oMultiHitbox)
                hitbox.myid = arrID
                hitbox.sax = arrSAX
            }
        }
        else
        {
            findID = ds_list_find_index(global.hitboxList, arrID)
            if (findID >= 0)
                ds_list_delete(global.hitboxList, findID)
        }
    }
}
else
{
    if (ds_list_size(global.speedList) > 0)
        ds_list_clear(global.speedList)
    if (ds_list_size(global.screwList) > 0)
        ds_list_clear(global.screwList)
    if (ds_list_size(global.hitboxList) > 0)
        ds_list_clear(global.hitboxList)
}
if instance_exists(oMapCursor)
{
    if (ds_list_size(posData) > 0)
    {
        for (i = 0; i < ds_list_size(posData); i++)
        {
            arrMapIcon = ds_list_find_value(posData, i)
            arrID = arrMapIcon[0]
            arrX = arrMapIcon[1]
            arrY = arrMapIcon[2]
            sax = arrMapIcon[3]
            spectator = arrMapIcon[5]
            if ((global.spectator && (!global.sax)) || (global.sax && global.juggActive))
            {
                if (!sax)
                {
                    if (spectator && (!global.sax))
                    {
                        if (arrX != 3 && arrY != 3)
                            draw_sprite_ext(sSpectatorIcon, 0, (arrX * 8), ((arrY * 8) + 32), 1, 1, direction, c_white, oMapCursor.image_alpha)
                    }
                    else if (arrX != 3 && arrY != 3)
                        draw_sprite_ext(sFusionIcon, 0, (arrX * 8), ((arrY * 8) + 32), 1, 1, direction, c_white, oMapCursor.image_alpha)
                }
                else if (arrX != 3 && arrY != 3)
                    draw_sprite_ext(sMultitroidMapIconMiepee, 0, (arrX * 8), ((arrY * 8) + 32), 1, 1, direction, c_white, oMapCursor.image_alpha)
            }
            else if (arrX != 3 && arrY != 3 && sax == global.sax && (!spectator))
                draw_sprite_ext(oControl.MultitroidMapIcon, (arrID - 1), (arrX * 8), ((arrY * 8) + 32), 1, 1, direction, c_white, oMapCursor.image_alpha)
        }
    }
    rectoffset = 0
    if instance_exists(oMapScrBG2)
        rectoffset = oMapScrBG2.rectoffset
    draw_sprite_ext(sMultitroidMapPlayerCountBox, 1, (view_xview[0] - (oControl.widescreen_space / 2)), ((view_yview[0] + 44) - rectoffset), 1, 1, direction, c_white, 1)
    if (ds_list_size(global.idList) > 1)
    {
        for (f = 0; f < ds_list_size(global.idList); f++)
        {
            arrList = ds_list_find_value(global.idList, f)
            ID = arrList[0, 0]
            _x = (10 * floor((f / 2)))
            _y = (10 * (f % 2))
            if (ID == global.clientID)
                draw_sprite_ext(oControl.MultitroidIcon, (ID - 1), (((view_xview[0] - (oControl.widescreen_space / 2)) + 2) + _x), (((view_yview[0] + 44) + 13) + _y), 1, 1, direction, c_white, 1)
            else
                draw_sprite_ext(oControl.MultitroidIconDark, (ID - 1), (((view_xview[0] - (oControl.widescreen_space / 2)) + 2) + _x), (((view_yview[0] + 44) + 13) + _y), 1, 1, direction, c_white, 1)
        }
    }
    else if (ds_list_size(global.idList) == 1 || ds_list_size(global.idList) == 0)
        draw_sprite_ext(oControl.MultitroidIcon, clamp((global.clientID - 1), 0, 16), ((view_xview[0] - (oControl.widescreen_space / 2)) + 2), ((view_yview[0] + 44) + 13), 1, 1, direction, c_white, 1)
}
