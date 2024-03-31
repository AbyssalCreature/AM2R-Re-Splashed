var i, arrDraw, arrID, arrX, arrY, arrSprite, arrImage, arrA1, arrA1X, arrA1Y, arrA2, arrA2X, arrA2Y, arrA2A, arrMirror, arrArmmsl, arrRoom, arrName, arrBlend, arrFXTimer, arrRoomPrev, arrState, arrSAX, arrHealth, arrSpectator, tunnel, showName, text, offset, offsetY, offsetX, healthString, barHealthString, barHealth, tankHealth, fullTanks, tank, f, _x, _y, tankSprite, stretchMult, timerStr, redColor, arrSBall;
if (!instance_exists(oClient))
    instance_destroy()
else
{
    if (ds_list_size(oClient.roomListData) > 0)
    {
        for (i = 0; i < ds_list_size(oClient.roomListData); i++)
        {
            arrDraw = ds_list_find_value(oClient.roomListData, i)
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
            arrHealth = arrDraw[25]
            arrSpectator = arrDraw[26]
            arrSBall = arrDraw[31]
            tunnel = 0
            if (string_count("MorphBall", sprite_get_name(arrSprite)) > 0)
            {
                with (oMultiHitbox)
                {
                    if (myid == arrID)
                    {
                        if (position_meeting(arrX, (arrY + 1), oSolid) && position_meeting(arrX, (arrY - 17), oSolid))
                            tunnel = 1
                    }
                }
            }
            if ((arrRoom == room || arrRoom == 6 || arrRoom == 10 || arrRoom == 9 || arrRoom == 11 || arrRoom == 16) && instance_exists(oCharacter) && room != rm_transition)
            {
                if (arrSAX == global.sax)
                {
                    if (!arrSpectator)
                    {
                        offsetY = 48
                        if (string_count("MorphBall", sprite_get_name(arrSprite)) > 0)
                            offsetY = 21
                        offsetX = 7
                        draw_set_halign(fa_center)
                        healthString = string(arrHealth)
                        barHealthString = string_copy(healthString, (string_length(healthString) - 1), string_length(healthString))
                        barHealth = real(barHealthString)
                        tankHealth = (arrHealth - barHealth)
                        fullTanks = (tankHealth / 100)
                        tank = 0
                        for (f = 0; f < 10; f++)
                        {
                            tank++
                            _x = (3 * floor((f / 2)))
                            _y = (3 * (f % 2))
                            tankSprite = sHealthTank
                            if (tank <= fullTanks)
                            {
                                tankSprite = sRHealthTank
                                draw_sprite_ext(tankSprite, 0, ((arrX - offsetX) + _x), ((arrY - (offsetY + 7)) + _y), 1, 1, 0, c_aqua, 1)
                            }
                            else
                                draw_sprite_ext(tankSprite, 0, ((arrX - offsetX) + _x), ((arrY - (offsetY + 7)) + _y), 1, 1, 0, c_white, 1)
                        }
                        draw_sprite_ext(sRHealthBar, 0, (arrX - offsetX), (arrY - (offsetY + 10)), 1, 1, 0, c_aqua, 1)
                        draw_set_halign(fa_right)
                        stretchMult = (abs((15 - round((barHealth / 6.6)))) * -1)
                        if (barHealth == 99)
                            stretchMult = 0
                        draw_sprite_ext(sHealthBarStretch, 0, ((arrX - offsetX) + 14), (arrY - (offsetY + 10)), stretchMult, 1, 0, c_white, 1)
                        draw_set_halign(fa_left)
                    }
                    showName = 1
                    switch oControl.showname
                    {
                        case "disabled":
                            showName = 0
                            break
                        case "enabled":
                            showName = 1
                            break
                    }

                    if showName
                    {
                        if (arrRoom == room)
                            text = arrName
                        else if (arrRoom == 10)
                            text = (arrName + ": collecting item")
                        else
                            text = (arrName + ": paused")
                        if arrSpectator
                            text = ""
                        if (arrRoom != room)
                        {
                            if (arrRoomPrev == room)
                            {
                                offset = 52
                                if (string_lower(arrName) == "meep")
                                    offset = 54
                                if (string_lower(arrName) == "omegadruid")
                                    offset = 62
                                draw_set_font(global.fontGUI2)
                                draw_set_halign(fa_center)
                                draw_cool_text(arrX, (arrY - offset), text, c_black, c_white, c_white, 1)
                                draw_set_halign(fa_left)
                            }
                        }
                        else
                        {
                            offset = 52
                            if (string_lower(arrName) == "meep")
                                offset = 54
                            if (string_lower(arrName) == "omegadruid")
                                offset = 62
                            draw_set_font(global.fontGUI2)
                            draw_set_halign(fa_center)
                            draw_cool_text(arrX, (arrY - offset), text, c_black, c_white, c_white, 1)
                            draw_set_halign(fa_left)
                        }
                    }
                }
                else if (global.showHealthIndicators && (!tunnel) && (!arrSpectator) && (!arrSBall))
                {
                    offsetY = 42
                    if (string_count("MorphBall", sprite_get_name(arrSprite)) > 0)
                        offsetY = 21
                    offsetX = 7
                    draw_set_halign(fa_center)
                    draw_sprite(sRHealthArrow, 0, (arrX - 1), (arrY - offsetY))
                    healthString = string(arrHealth)
                    barHealthString = string_copy(healthString, (string_length(healthString) - 1), string_length(healthString))
                    barHealth = real(barHealthString)
                    tankHealth = (arrHealth - barHealth)
                    fullTanks = (tankHealth / 100)
                    tank = 0
                    redColor = make_color_hsv(0, 255, 255)
                    for (f = 0; f < 10; f++)
                    {
                        tank++
                        _x = (3 * floor((f / 2)))
                        _y = (3 * (f % 2))
                        tankSprite = sHealthTank
                        if (tank <= fullTanks)
                        {
                            tankSprite = sRHealthTank
                            draw_sprite_ext(tankSprite, 0, ((arrX - offsetX) + _x), ((arrY - (offsetY + 7)) + _y), 1, 1, 0, redColor, 1)
                        }
                        else
                            draw_sprite_ext(tankSprite, 0, ((arrX - offsetX) + _x), ((arrY - (offsetY + 7)) + _y), 1, 1, 0, c_white, 1)
                    }
                    draw_sprite_ext(sRHealthBar, 0, (arrX - offsetX), (arrY - (offsetY + 10)), 1, 1, 0, redColor, 1)
                    draw_set_halign(fa_right)
                    stretchMult = (abs((15 - round((barHealth / 6.6)))) * -1)
                    if (barHealth == 99)
                        stretchMult = 0
                    draw_sprite_ext(sHealthBarStretch, 0, ((arrX - offsetX) + 14), (arrY - (offsetY + 10)), stretchMult, 1, 0, c_white, 1)
                    draw_set_halign(fa_left)
                }
            }
        }
    }
    if (global.showHealthIndicators && instance_exists(oCharacter))
    {
        offsetY = 42
        if (string_count("MorphBall", sprite_get_name(oCharacter.sprite_index)) > 0)
            offsetY = 21
        offsetX = 7
        draw_set_halign(fa_center)
        draw_sprite(sGHealthArrow, 0, (oCharacter.x - 2), (oCharacter.y - offsetY))
        draw_set_halign(fa_left)
    }
}
if ((!global.sax) && global.spectator && global.ingame)
{
    text = "Jump to swap players"
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_center)
    draw_cool_text((view_xview[0] + 160), (view_yview[0] + 200), text, c_black, c_white, c_white, image_alpha)
    draw_set_halign(fa_left)
    text = "Fire to stop spectating"
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_center)
    draw_cool_text((view_xview[0] + 160), (view_yview[0] + 220), text, c_black, c_white, c_white, image_alpha)
    draw_set_halign(fa_left)
}
if (global.sax && global.spectator && global.ingame)
{
    if (global.reformTimer > 0)
    {
        timerStr = string((global.reformTimer / 60))
        text = (("Reform in " + timerStr) + " seconds")
        draw_set_font(global.fontGUI2)
        draw_set_halign(fa_center)
        draw_cool_text((view_xview[0] + 160), (view_yview[0] + 220), text, c_black, c_white, c_white, image_alpha)
        draw_set_halign(fa_left)
    }
    else
    {
        text = "Jump to reform!"
        draw_set_font(global.fontGUI2)
        draw_set_halign(fa_center)
        draw_cool_text((view_xview[0] + 160), (view_yview[0] + 220), text, c_black, c_white, c_white, image_alpha)
        draw_set_halign(fa_left)
    }
}
