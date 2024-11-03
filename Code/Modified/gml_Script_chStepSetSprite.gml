var armcannon, set, sDir, sDir1, sDir2, sDirX1, sDirY1, sDirX2, sDirY2, sTouchSide1, sTouchSide2;
armcannon = 1
set = global.currentsuit
if (state == STANDING)
{
    if (landing == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(960, sLand_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1061, sLand_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(879, sLand_fusion)
        image_speed = 0.5
    }
    else if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(1004, sTurn_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1099, sTurn_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(931, sTurn_fusion)
        image_speed = 0.5
    }
    else
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(993, sStandRight_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1088, sStandRight_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(920, sStandRight_fusion)
            image_speed = 0.1
            if (idle == timetoidle)
                idleanim = round(random(1))
            if (idle > timetoidle && (!instance_exists(oEMPNoise)))
            {
                image_speed = 0
                armcannon = 0
                if (set == 0)
                    sprite_index = scr_suit_sprites(949, sIdleRight_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1049, sIdleRight_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(868, sIdleRight_fusion)
                if (idleanim == 0)
                {
                    if (idle > timetoidle && idle <= (timetoidle + 10))
                        image_index = 0
                    if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                        image_index = 1
                    if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                        image_index = 2
                    if (idle > (timetoidle + 80) && idle <= (timetoidle + 90))
                        image_index = 3
                    if (idle > (timetoidle + 90) && idle <= (timetoidle + 100))
                        image_index = 4
                    if (idle > (timetoidle + 100) && idle <= (timetoidle + 160))
                        image_index = 5
                    if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                        image_index = 4
                    if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                        image_index = 3
                    if (idle > (timetoidle + 180) && idle <= (timetoidle + 190))
                        image_index = 2
                    if (idle > (timetoidle + 190) && idle <= (timetoidle + 200))
                        image_index = 6
                    if (idle > (timetoidle + 200) && idle <= (timetoidle + 270))
                        image_index = 7
                    if (idle > (timetoidle + 270) && idle <= (timetoidle + 280))
                        image_index = 6
                    if (idle > (timetoidle + 280) && idle <= (timetoidle + 290))
                        image_index = 1
                    if (idle > (timetoidle + 290))
                    {
                        idle = 0
                        timetoidle = (300 + floor(random(300)))
                    }
                }
                if (idleanim == 1)
                {
                    if (idle > timetoidle && idle <= (timetoidle + 10))
                        image_index = 0
                    if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                        image_index = 1
                    if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                        image_index = 2
                    if (idle > (timetoidle + 80) && idle <= (timetoidle + 110))
                        image_index = 8
                    if (idle > (timetoidle + 110) && idle <= (timetoidle + 120))
                        image_index = 9
                    if (idle > (timetoidle + 120) && idle <= (timetoidle + 130))
                        image_index = 10
                    if (idle > (timetoidle + 130) && idle <= (timetoidle + 140))
                        image_index = 11
                    if (idle > (timetoidle + 140) && idle <= (timetoidle + 150))
                        image_index = 10
                    if (idle > (timetoidle + 150) && idle <= (timetoidle + 160))
                        image_index = 11
                    if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                        image_index = 10
                    if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                        image_index = 9
                    if (idle > (timetoidle + 180) && idle <= (timetoidle + 210))
                        image_index = 10
                    if (idle > (timetoidle + 210) && idle <= (timetoidle + 220))
                        image_index = 11
                    if (idle > (timetoidle + 220) && idle <= (timetoidle + 230))
                        image_index = 10
                    if (idle > (timetoidle + 230) && idle <= (timetoidle + 240))
                        image_index = 9
                    if (idle > (timetoidle + 240) && idle <= (timetoidle + 250))
                        image_index = 8
                    if (idle > (timetoidle + 250) && idle <= (timetoidle + 260))
                        image_index = 2
                    if (idle > (timetoidle + 260) && idle <= (timetoidle + 270))
                        image_index = 1
                    if (idle > (timetoidle + 270))
                    {
                        idle = 0
                        timetoidle = (300 + floor(random(300)))
                    }
                }
            }
            if (aimdirection == 2)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(991, sStandAimUR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1086, sStandAimUR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(918, sStandAimUR_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(987, sStandAimDR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1082, sStandAimDR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(914, sStandAimDR_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(989, sStandAimUp_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1084, sStandAimUp_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(916, sStandAimUp_fusion)
                image_speed = 0.1
            }
        }
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(992, sStandLeft_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1087, sStandLeft_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(919, sStandLeft_fusion)
            image_speed = 0.1
            if (idle == timetoidle)
                idleanim = round(random(1))
            if (idle > timetoidle && (!instance_exists(oEMPNoise)))
            {
                image_speed = 0
                armcannon = 0
                if (set == 0)
                    sprite_index = scr_suit_sprites(948, sIdleLeft_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1048, sIdleLeft_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(867, sIdleLeft_fusion)
                if (idleanim == 0)
                {
                    if (idle > timetoidle && idle <= (timetoidle + 10))
                        image_index = 0
                    if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                        image_index = 1
                    if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                        image_index = 2
                    if (idle > (timetoidle + 80) && idle <= (timetoidle + 90))
                        image_index = 3
                    if (idle > (timetoidle + 90) && idle <= (timetoidle + 100))
                        image_index = 4
                    if (idle > (timetoidle + 100) && idle <= (timetoidle + 160))
                        image_index = 5
                    if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                        image_index = 4
                    if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                        image_index = 3
                    if (idle > (timetoidle + 180) && idle <= (timetoidle + 190))
                        image_index = 2
                    if (idle > (timetoidle + 190) && idle <= (timetoidle + 200))
                        image_index = 6
                    if (idle > (timetoidle + 200) && idle <= (timetoidle + 270))
                        image_index = 7
                    if (idle > (timetoidle + 270) && idle <= (timetoidle + 280))
                        image_index = 6
                    if (idle > (timetoidle + 280) && idle <= (timetoidle + 290))
                        image_index = 1
                    if (idle > (timetoidle + 290))
                    {
                        idle = 0
                        timetoidle = 60
                    }
                }
                if (idleanim == 1)
                {
                    if (idle > timetoidle && idle <= (timetoidle + 10))
                        image_index = 0
                    if (idle > (timetoidle + 10) && idle <= (timetoidle + 20))
                        image_index = 1
                    if (idle > (timetoidle + 20) && idle <= (timetoidle + 80))
                        image_index = 2
                    if (idle > (timetoidle + 80) && idle <= (timetoidle + 110))
                        image_index = 8
                    if (idle > (timetoidle + 110) && idle <= (timetoidle + 120))
                        image_index = 9
                    if (idle > (timetoidle + 120) && idle <= (timetoidle + 130))
                        image_index = 10
                    if (idle > (timetoidle + 130) && idle <= (timetoidle + 140))
                        image_index = 11
                    if (idle > (timetoidle + 140) && idle <= (timetoidle + 150))
                        image_index = 10
                    if (idle > (timetoidle + 150) && idle <= (timetoidle + 160))
                        image_index = 11
                    if (idle > (timetoidle + 160) && idle <= (timetoidle + 170))
                        image_index = 10
                    if (idle > (timetoidle + 170) && idle <= (timetoidle + 180))
                        image_index = 9
                    if (idle > (timetoidle + 180) && idle <= (timetoidle + 210))
                        image_index = 10
                    if (idle > (timetoidle + 210) && idle <= (timetoidle + 220))
                        image_index = 11
                    if (idle > (timetoidle + 220) && idle <= (timetoidle + 230))
                        image_index = 10
                    if (idle > (timetoidle + 230) && idle <= (timetoidle + 240))
                        image_index = 9
                    if (idle > (timetoidle + 240) && idle <= (timetoidle + 250))
                        image_index = 8
                    if (idle > (timetoidle + 250) && idle <= (timetoidle + 260))
                        image_index = 2
                    if (idle > (timetoidle + 260) && idle <= (timetoidle + 270))
                        image_index = 1
                    if (idle > (timetoidle + 270))
                    {
                        idle = 0
                        timetoidle = (300 + random(300))
                    }
                }
            }
            if (aimdirection == 3)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(988, sStandAimUL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1083, sStandAimUL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(915, sStandAimUL_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(986, sStandAimDL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1081, sStandAimDL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(913, sStandAimDL_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(990, sStandAimUpL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1085, sStandAimUpL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(917, sStandAimUpL_fusion)
                image_speed = 0.1
            }
        }
    }
}
if (state == RUNNING)
{
    landing = 0
    if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(1004, sTurn_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1099, sTurn_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(931, sTurn_fusion)
        image_speed = 0.5
    }
    else
    {
        if (facing == RIGHT && walking == 0)
        {
            if (aimdirection == 0 && firing == 0 && armmsl == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(976, sRunRight_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1072, sRunRight_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(904, sRunRight_fusion)
                image_speed = 0.5
            }
            if (aimdirection == 0 && (firing > 0 || armmsl == 1))
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(972, sRunAimR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1068, sRunAimR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(900, sRunAimR_fusion)
                image_speed = 0.5
            }
            if (aimdirection == 2)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(974, sRunAimUR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1070, sRunAimUR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(902, sRunAimUR_fusion)
                image_speed = 0.5
            }
            if (aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(970, sRunAimDR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1066, sRunAimDR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(898, sRunAimDR_fusion)
                image_speed = 0.5
            }
        }
        if (facing == LEFT && walking == 0)
        {
            if (aimdirection == 1 && firing == 0 && armmsl == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(975, sRunLeft_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1071, sRunLeft_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(903, sRunLeft_fusion)
                image_speed = 0.5
            }
            if (aimdirection == 1 && (firing > 0 || armmsl == 1))
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(971, sRunAimL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1067, sRunAimL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(899, sRunAimL_fusion)
                image_speed = 0.5
            }
            if (aimdirection == 3)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(973, sRunAimUL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1069, sRunAimUL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(901, sRunAimUL_fusion)
                image_speed = 0.5
            }
            if (aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(969, sRunAimDL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1065, sRunAimDL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(897, sRunAimDL_fusion)
                image_speed = 0.5
            }
        }
        if (facing == RIGHT && walking == 1)
        {
            if (aimdirection == 0 && firing == 0 && armmsl == 0 && aimlock == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1123, sWalkRight_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1111, sWalkRight_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(943, sWalkRight_fusion)
            }
            if (aimdirection == 0 && (firing > 0 || armmsl == 1 || aimlock == 1))
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1117, sWalkAimR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1105, sWalkAimR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(937, sWalkAimR_fusion)
            }
            if (aimdirection == 2)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1121, sWalkAimUR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1109, sWalkAimUR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(941, sWalkAimUR_fusion)
            }
            if (aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1115, sWalkAimDR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1103, sWalkAimDR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(935, sWalkAimDR_fusion)
            }
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1119, sWalkAimUp_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1107, sWalkAimUp_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(939, sWalkAimUp_fusion)
            }
            if (xVel > 0)
                image_speed = 0.25
            else if (xVel < 0)
            {
                image_speed = -0.25
                if (image_index <= -10)
                    image_index = 0
            }
        }
        if (facing == LEFT && walking == 1)
        {
            if (aimdirection == 1 && firing == 0 && armmsl == 0 && aimlock == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1122, sWalkLeft_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1110, sWalkLeft_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(942, sWalkLeft_fusion)
            }
            if (aimdirection == 1 && (firing > 0 || armmsl == 1 || aimlock == 1))
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1116, sWalkAimL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1104, sWalkAimL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(936, sWalkAimL_fusion)
            }
            if (aimdirection == 3)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1118, sWalkAimUL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1106, sWalkAimUL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(938, sWalkAimUL_fusion)
            }
            if (aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1114, sWalkAimDL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1102, sWalkAimDL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(934, sWalkAimDL_fusion)
            }
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1120, sWalkAimUpL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1108, sWalkAimUpL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(940, sWalkAimUpL_fusion)
            }
            if (xVel < 0)
                image_speed = 0.25
            else if (xVel > 0)
            {
                image_speed = -0.25
                if (image_index <= -10)
                    image_index = 0
            }
        }
    }
}
if (state == DUCKING)
{
    if (unmorphing == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(1005, sUnmorph_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1100, sUnmorph_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(932, sUnmorph_fusion)
        image_speed = 0.8
    }
    else if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(819, sCrouchTurn_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1026, sCrouchTurn_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(845, sCrouchTurn_fusion)
        image_speed = 0.5
    }
    else
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(818, sCrouch_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1025, sCrouch_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(844, sCrouch_fusion)
        image_speed = 0.1
    }
}
if (state == JUMPING)
{
    if (vjump == 0)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(955, sJumpRight_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1056, sJumpRight_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(874, sJumpRight_fusion)
            image_speed = 0.75
        }
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(954, sJumpLeft_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1055, sJumpLeft_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(873, sJumpLeft_fusion)
            image_speed = 0.75
        }
        if (global.spacejump == 1 && statetime > 4 && (inwater == 0 || global.currentsuit == 2))
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(983, sSpacejump_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1079, sSpacejump_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(911, sSpacejump_fusion)
            image_speed = 1
        }
    }
    if (vjump == 1)
    {
        if (turning == 1)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(812, sAirTurn_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1019, sAirTurn_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(838, sAirTurn_fusion)
            image_speed = 0.5
            if (aimdirection == 7)
            {
                if (facing == RIGHT)
                {
                    if (set == 0)
                        sprite_index = scr_suit_sprites(953, sJAimDwnTR_fusion)
                    if (set == 1)
                        sprite_index = scr_suit_sprites(1053, sJAimDwnTR_fusion)
                    if (set == 2)
                        sprite_index = scr_suit_sprites(872, sJAimDwnTR_fusion)
                    image_speed = 0.75
                }
                if (facing == LEFT)
                {
                    if (set == 0)
                        sprite_index = scr_suit_sprites(952, sJAimDwnTL_fusion)
                    if (set == 1)
                        sprite_index = scr_suit_sprites(1052, sJAimDwnTL_fusion)
                    if (set == 2)
                        sprite_index = scr_suit_sprites(871, sJAimDwnTL_fusion)
                    image_speed = 0.75
                }
            }
        }
        else if (unmorphing == 1)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(1005, sUnmorph_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1100, sUnmorph_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(932, sUnmorph_fusion)
            image_speed = 0.8
        }
        else
        {
            if (aimdirection != 7)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(1054, sVjump_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1101, sVjump_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(933, sVjump_fusion)
                image_speed = 0.2
            }
            if (aimdirection == 7)
            {
                if (facing == RIGHT)
                {
                    if (set == 0)
                        sprite_index = scr_suit_sprites(951, sJAimDwnR_fusion)
                    if (set == 1)
                        sprite_index = scr_suit_sprites(1051, sJAimDwnR_fusion)
                    if (set == 2)
                        sprite_index = scr_suit_sprites(870, sJAimDwnR_fusion)
                    image_speed = 0.75
                }
                if (facing == LEFT)
                {
                    if (set == 0)
                        sprite_index = scr_suit_sprites(950, sJAimDwnL_fusion)
                    if (set == 1)
                        sprite_index = scr_suit_sprites(1050, sJAimDwnL_fusion)
                    if (set == 2)
                        sprite_index = scr_suit_sprites(869, sJAimDwnL_fusion)
                    image_speed = 0.75
                }
            }
        }
    }
    if (walljumping == 1)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(1124, sWalljump_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1112, sWalljump_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(944, sWalljump_fusion)
            image_speed = 1
        }
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(1125, sWalljumpL_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1113, sWalljumpL_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(945, sWalljumpL_fusion)
            image_speed = 1
        }
    }
}
if (state == FALLING && statePrev == FALLING && statePrevPrev == FALLING)
{
    if (set == 0)
        sprite_index = scr_suit_sprites(955, sJumpRight_fusion)
    if (set == 1)
        sprite_index = scr_suit_sprites(1056, sJumpRight_fusion)
    if (set == 2)
        sprite_index = scr_suit_sprites(874, sJumpRight_fusion)
    image_speed = 0.75
}
if (state == BALL)
{
    if (morphing == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(965, sMorph_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1062, sMorph_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(880, sMorph_fusion)
        if (global.opmrpstyle == 0)
            image_speed = 0.8
        else
            image_speed = 0.5
    }
    else if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(967, sMorphBallTurn_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1064, sMorphBallTurn_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(882, sMorphBallTurn_fusion)
        image_speed = 1
    }
    else
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(966, sMorphBall_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1063, sMorphBall_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(881, sMorphBall_fusion)
        image_speed = 0.3
    }
}
if (state == AIRBALL || state == GRABBEDQUEENMORPH || state == GRABBEDQUEENBELLY)
{
    if (morphing == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(965, sMorph_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1062, sMorph_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(880, sMorph_fusion)
        image_speed = 0.8
    }
    else if (turning == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(967, sMorphBallTurn_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1064, sMorphBallTurn_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(882, sMorphBallTurn_fusion)
        image_speed = 1
    }
    else
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(811, sAirMorphBall_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1018, sAirMorphBall_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(837, sAirMorphBall_fusion)
        image_speed = 0.3
    }
}
if (state == GRABBEDQUEEN)
{
    if (set == 0)
        sprite_index = scr_suit_sprites(813, sBittenL_fusion)
    if (set == 1)
        sprite_index = scr_suit_sprites(1020, sBittenL_fusion)
    if (set == 2)
        sprite_index = scr_suit_sprites(839, sBittenL_fusion)
}
if (state == SPIDERBALL || (state == AIRBALL && sball == 1))
{
    if (set == 0)
        sprite_index = scr_suit_sprites(985, sSpiderMorphBall_fusion)
    if (set == 1)
        sprite_index = scr_suit_sprites(1080, sSpiderMorphBall_fusion)
    if (set == 2)
        sprite_index = scr_suit_sprites(912, sSpiderMorphBall_fusion)
    if ((xprevious - x) != 0 || (yprevious - y) != 0)
    {
        sDir = point_direction(xprevious, yprevious, x, y)
        sDir1 = (sDir + 90)
        sDir2 = (sDir - 90)
        sDirX1 = cos(degtorad(sDir1))
        sDirY1 = sin(degtorad(sDir1))
        sDirX2 = cos(degtorad(sDir2))
        sDirY2 = sin(degtorad(sDir2))
        sTouchSide1 = place_meeting((x - (sDirX1 * 2)), (y + (sDirY1 * 2)), oSolid)
        sTouchSide2 = place_meeting((x - (sDirX2 * 2)), (y + (sDirY2 * 2)), oSolid)
        if sTouchSide1
        {
            if (facing == RIGHT)
                image_speed = 0.3
            else
                image_speed = -0.3
        }
        if sTouchSide2
        {
            if (facing == RIGHT)
                image_speed = -0.3
            else
                image_speed = 0.3
        }
    }
}
if (state == LOCKEDBALL)
{
    if (set == 0)
        sprite_index = scr_suit_sprites(966, sMorphBall_fusion)
    if (set == 1)
        sprite_index = scr_suit_sprites(1063, sMorphBall_fusion)
    if (set == 2)
        sprite_index = scr_suit_sprites(881, sMorphBall_fusion)
    image_speed = 0
    image_index = 0
}
if (state == GRIP)
{
    if (facing == RIGHT)
    {
        if (turning == 1)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(896, sGripTurnR_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1045, sGripTurnR_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(864, sGripTurnR_fusion)
            image_speed = 0.5
        }
        else
        {
            if (aimdirection == 0 || aimdirection == 2 || aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(883, sGrip_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1032, sGrip_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(851, sGrip_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 1)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(888, sGripAimL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1037, sGripAimL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(856, sGripAimL_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 3)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(890, sGripAimUL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1039, sGripAimUL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(858, sGripAimUL_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(884, sGripAimDL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1033, sGripAimDL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(852, sGripAimDL_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(892, sGripAimUpR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1041, sGripAimUpR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(860, sGripAimUpR_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 7)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(887, sGripAimDwnR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1036, sGripAimDwnR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(855, sGripAimDwnR_fusion)
                image_speed = 0.1
            }
        }
    }
    if (facing == LEFT)
    {
        if (turning == 1)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(895, sGripTurnL_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1044, sGripTurnL_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(863, sGripTurnL_fusion)
            image_speed = 0.5
        }
        else
        {
            if (aimdirection == 1 || aimdirection == 3 || aimdirection == 5)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(894, sGripL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1043, sGripL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(862, sGripL_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 0)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(889, sGripAimR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1038, sGripAimR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(857, sGripAimR_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 2)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(893, sGripAimUR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1042, sGripAimUR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(861, sGripAimUR_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 4)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(885, sGripAimDR_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1034, sGripAimDR_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(853, sGripAimDR_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 6)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(891, sGripAimUpL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1040, sGripAimUpL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(859, sGripAimUpL_fusion)
                image_speed = 0.1
            }
            if (aimdirection == 7)
            {
                if (set == 0)
                    sprite_index = scr_suit_sprites(886, sGripAimDwnL_fusion)
                if (set == 1)
                    sprite_index = scr_suit_sprites(1035, sGripAimDwnL_fusion)
                if (set == 2)
                    sprite_index = scr_suit_sprites(854, sGripAimDwnL_fusion)
                image_speed = 0.1
            }
        }
    }
}
if (state == CLIMBING)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(816, sClimb_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1023, sClimb_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(842, sClimb_fusion)
        image_speed = 1
    }
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(817, sClimbL_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1024, sClimbL_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(843, sClimbL_fusion)
        image_speed = 1
    }
}
if (state == BRAKING)
{
    if (sjball == 0)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(815, sBrakeR_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1022, sBrakeR_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(841, sBrakeR_fusion)
            image_speed = 0.2
        }
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(814, sBrakeL_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1021, sBrakeL_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(840, sBrakeL_fusion)
            image_speed = 0.2
        }
    }
    if (sjball == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(811, sAirMorphBall_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1018, sAirMorphBall_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(837, sAirMorphBall_fusion)
        image_speed = 0
    }
}
if (state == SJSTART && sjball == 0)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(979, sSJumpStart_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1075, sSJumpStart_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(907, sSJumpStart_fusion)
        image_speed = 0.3
    }
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(980, sSJumpStartL_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1076, sSJumpStartL_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(908, sSJumpStartL_fusion)
        image_speed = 0.3
    }
}
if (state == SUPERJUMP && sjball == 0)
{
    if (sjdir == 0)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(982, sSJumpUpR_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1078, sSJumpUpR_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(910, sSJumpUpR_fusion)
            image_speed = 0.5
        }
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(981, sSJumpUpL_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1077, sSJumpUpL_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(909, sSJumpUpL_fusion)
            image_speed = 0.5
        }
    }
    else
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(978, sSJumpR_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1074, sSJumpR_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(906, sSJumpR_fusion)
            image_speed = 0.4
        }
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(977, sSJumpL_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1073, sSJumpL_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(905, sSJumpL_fusion)
            image_speed = 0.4
        }
    }
}
if (state == SJSTART && sjball == 1)
{
    if (set == 0)
        sprite_index = scr_suit_sprites(811, sAirMorphBall_fusion)
    if (set == 1)
        sprite_index = scr_suit_sprites(1018, sAirMorphBall_fusion)
    if (set == 2)
        sprite_index = scr_suit_sprites(837, sAirMorphBall_fusion)
    image_speed = 0
}
if (state == SUPERJUMP && sjball == 1)
{
    if (sjdir == 0)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(967, sMorphBallTurn_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1064, sMorphBallTurn_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(882, sMorphBallTurn_fusion)
        image_speed = 0.5
    }
    else
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(811, sAirMorphBall_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1018, sAirMorphBall_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(837, sAirMorphBall_fusion)
        image_speed = 1
    }
}
if (state == HURT)
{
    if (sjball == 0)
    {
        if (facing == RIGHT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(947, sHurtR_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1047, sHurtR_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(866, sHurtR_fusion)
            image_speed = 0.2
        }
        if (facing == LEFT)
        {
            if (set == 0)
                sprite_index = scr_suit_sprites(946, sHurtL_fusion)
            if (set == 1)
                sprite_index = scr_suit_sprites(1046, sHurtL_fusion)
            if (set == 2)
                sprite_index = scr_suit_sprites(865, sHurtL_fusion)
            image_speed = 0.2
        }
    }
    if (sjball == 1)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(811, sAirMorphBall_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1018, sAirMorphBall_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(837, sAirMorphBall_fusion)
        image_speed = 0.5
    }
}
if (state == IDLE || state == SAVING || state == SAVINGSHIP || state == ELEVATOR || state == GFELEVATOR)
{
    if (facing == 0)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(822, sFront_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1029, sFront_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(848, sFront_fusion)
        image_speed = 0.1
    }
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(824, sFrontR_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1031, sFrontR_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(850, sFrontR_fusion)
        image_speed = 0.5
        aimdirection = 0
    }
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(823, sFrontL_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1030, sFrontL_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(849, sFrontL_fusion)
        image_speed = 0.5
        aimdirection = 1
    }
}
if (state == GRABBEDGAMMA || state == GRABBEDOMEGA)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(947, sHurtR_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1047, sHurtR_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(866, sHurtR_fusion)
        image_speed = 0
        image_index = 1
    }
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(946, sHurtL_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1046, sHurtL_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(865, sHurtL_fusion)
        image_speed = 0
        image_index = 1
    }
}
if (state == KNOCKBACK1 || state == KNOCKBACK2)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(957, sKnockbackR_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1058, sKnockbackR_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(876, sKnockbackR_fusion)
    }
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(956, sKnockbackL_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1057, sKnockbackL_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(875, sKnockbackL_fusion)
    }
}
if (state == KNOCKBACK1_LAND || state == KNOCKBACK2_LAND)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(959, sKnockLandR_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1060, sKnockLandR_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(878, sKnockLandR_fusion)
    }
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(958, sKnockLandL_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1059, sKnockLandL_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(877, sKnockLandL_fusion)
    }
}
if (state == A4EXPL)
{
    if (facing == RIGHT && statetime >= 60)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(959, sKnockLandR_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1060, sKnockLandR_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(878, sKnockLandR_fusion)
    }
}
if (state == RECOVER)
{
    if (facing == RIGHT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(955, sJumpRight_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1056, sJumpRight_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(874, sJumpRight_fusion)
        image_speed = -0.5
    }
    if (facing == LEFT)
    {
        if (set == 0)
            sprite_index = scr_suit_sprites(954, sJumpLeft_fusion)
        if (set == 1)
            sprite_index = scr_suit_sprites(1055, sJumpLeft_fusion)
        if (set == 2)
            sprite_index = scr_suit_sprites(873, sJumpLeft_fusion)
        image_speed = -0.5
    }
}
if ((inwater == 1 && global.currentsuit != 2) || monster_drain > 0)
{
    if (state == RUNNING || state == JUMPING)
        image_speed *= 0.5
}
aspr1 = 66
asprx = 0
aspry = 0
if (state == DUCKING && morphing == 0 && unmorphing == 0 && turning == 0)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(805, sAimR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1012, sAimR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(831, sAimR_fusion)
            aspry = -12
        }
        if (aimdirection == 2)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(810, sAimUR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1017, sAimUR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(836, sAimUR_fusion)
            aspry = -12
        }
        if (aimdirection == 4)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(801, sAimDR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1008, sAimDR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(827, sAimDR_fusion)
            aspry = -12
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(809, sAimUpR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1016, sAimUpR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(835, sAimUpR_fusion)
            aspry = -13
        }
    }
    if (facing == LEFT)
    {
        if (aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(803, sAimLcr_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1010, sAimLcr_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(829, sAimLcr_fusion)
            aspry = -12
        }
        if (aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(807, sAimUL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1014, sAimUL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(833, sAimUL_fusion)
            aspry = -12
        }
        if (aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(800, sAimDLcr_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1007, sAimDLcr_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(826, sAimDLcr_fusion)
            aspry = -12
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(808, sAimUpL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1015, sAimUpL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(834, sAimUpL_fusion)
            aspry = -13
        }
    }
}
if (state == DUCKING && turning == 1)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(998, sTAimR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1093, sTAimR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(925, sTAimR_fusion)
            aspry = -12
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1003, sTAimUR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1098, sTAimUR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(930, sTAimUR_fusion)
            asprx = -2
            aspry = -12
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(995, sTAimDR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1090, sTAimDR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(922, sTAimDR_fusion)
            asprx = -2
            aspry = -12
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1002, sTAimUpR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1097, sTAimUpR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(929, sTAimUpR_fusion)
            aspry = -13
        }
    }
    if (facing == LEFT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(996, sTAimL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1091, sTAimL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(923, sTAimL_fusion)
            aspry = -12
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1000, sTAimUL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1095, sTAimUL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(927, sTAimUL_fusion)
            asprx = -2
            aspry = -12
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(994, sTAimDL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1089, sTAimDL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(921, sTAimDL_fusion)
            aspry = -12
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1001, sTAimUpL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1096, sTAimUpL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(928, sTAimUpL_fusion)
            aspry = -13
        }
    }
}
if ((state == STANDING || state == RUNNING) && turning == 1)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(999, sTAimRst_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1094, sTAimRst_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(926, sTAimRst_fusion)
            aspry = -23
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1003, sTAimUR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1098, sTAimUR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(930, sTAimUR_fusion)
            asprx = -2
            aspry = -23
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(995, sTAimDR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1090, sTAimDR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(922, sTAimDR_fusion)
            asprx = -2
            aspry = -23
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1002, sTAimUpR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1097, sTAimUpR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(929, sTAimUpR_fusion)
            aspry = -24
        }
    }
    if (facing == LEFT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(997, sTAimLst_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1092, sTAimLst_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(924, sTAimLst_fusion)
            aspry = -23
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1000, sTAimUL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1095, sTAimUL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(927, sTAimUL_fusion)
            asprx = -2
            aspry = -23
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(994, sTAimDL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1089, sTAimDL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(921, sTAimDL_fusion)
            aspry = -23
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1001, sTAimUpL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1096, sTAimUpL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(928, sTAimUpL_fusion)
            aspry = -24
        }
    }
}
if ((state == STANDING || state == RUNNING) && landing == 1)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(805, sAimR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1012, sAimR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(831, sAimR_fusion)
                aspry = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(806, sAimRst_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1013, sAimRst_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(832, sAimRst_fusion)
                asprx = -2
                aspry = -17
            }
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(806, sAimRst_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1013, sAimRst_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(832, sAimRst_fusion)
                asprx = -1
                aspry = -21
            }
        }
        if (aimdirection == 2)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(810, sAimUR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1017, sAimUR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(836, sAimUR_fusion)
                aspry = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(810, sAimUR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1017, sAimUR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(836, sAimUR_fusion)
                asprx = -2
                aspry = -17
            }
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(810, sAimUR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1017, sAimUR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(836, sAimUR_fusion)
                asprx = -1
                aspry = -21
            }
        }
        if (aimdirection == 4)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(801, sAimDR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1008, sAimDR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(827, sAimDR_fusion)
                aspry = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(801, sAimDR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1008, sAimDR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(827, sAimDR_fusion)
                asprx = -2
                aspry = -17
            }
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(801, sAimDR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1008, sAimDR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(827, sAimDR_fusion)
                asprx = -1
                aspry = -21
            }
        }
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(809, sAimUpR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1016, sAimUpR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(835, sAimUpR_fusion)
                aspry = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(809, sAimUpR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1016, sAimUpR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(835, sAimUpR_fusion)
                asprx = -2
                aspry = -17
            }
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(809, sAimUpR_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1016, sAimUpR_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(835, sAimUpR_fusion)
                asprx = -1
                aspry = -21
            }
        }
    }
    if (facing == LEFT)
    {
        if (aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(802, sAimL_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1009, sAimL_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(828, sAimL_fusion)
                aspry = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(804, sAimLst_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1011, sAimLst_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(830, sAimLst_fusion)
                asprx = 2
                aspry = -17
            }
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(804, sAimLst_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1011, sAimLst_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(830, sAimLst_fusion)
                asprx = 1
                aspry = -21
            }
        }
        if (aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(807, sAimUL_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1014, sAimUL_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(833, sAimUL_fusion)
                aspry = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(807, sAimUL_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1014, sAimUL_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(833, sAimUL_fusion)
                asprx = 2
                aspry = -17
            }
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(807, sAimUL_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1014, sAimUL_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(833, sAimUL_fusion)
                asprx = 1
                aspry = -21
            }
        }
        if (aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(800, sAimDLcr_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1007, sAimDLcr_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(826, sAimDLcr_fusion)
                aspry = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(799, sAimDL_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1006, sAimDL_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(825, sAimDL_fusion)
                asprx = 1
                aspry = -16
            }
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(799, sAimDL_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1006, sAimDL_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(825, sAimDL_fusion)
                aspry = -20
            }
        }
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(808, sAimUpL_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1015, sAimUpL_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(834, sAimUpL_fusion)
                aspry = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(808, sAimUpL_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1015, sAimUpL_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(834, sAimUpL_fusion)
                asprx = 2
                aspry = -17
            }
            if (image_index >= 2 && image_index < 3)
            {
                if (set == 0)
                    aspr1 = scr_suit_sprites(808, sAimUpL_fusion)
                if (set == 1)
                    aspr1 = scr_suit_sprites(1015, sAimUpL_fusion)
                if (set == 2)
                    aspr1 = scr_suit_sprites(834, sAimUpL_fusion)
                asprx = 1
                aspry = -21
            }
        }
    }
}
if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 0)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(805, sAimR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1012, sAimR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(831, sAimR_fusion)
            aspry = -22
        }
        if (aimdirection == 2)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(810, sAimUR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1017, sAimUR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(836, sAimUR_fusion)
            aspry = -22
        }
        if (aimdirection == 4)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(801, sAimDR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1008, sAimDR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(827, sAimDR_fusion)
            aspry = -22
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(809, sAimUpR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1016, sAimUpR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(835, sAimUpR_fusion)
            aspry = -23
        }
    }
    if (facing == LEFT)
    {
        if (aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(802, sAimL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1009, sAimL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(828, sAimL_fusion)
            aspry = -22
        }
        if (aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(807, sAimUL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1014, sAimUL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(833, sAimUL_fusion)
            aspry = -22
        }
        if (aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(799, sAimDL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1006, sAimDL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(825, sAimDL_fusion)
            aspry = -22
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(808, sAimUpL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1015, sAimUpL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(834, sAimUpL_fusion)
            aspry = -23
        }
    }
}
if (state == JUMPING && vjump == 1 && morphing == 0 && unmorphing == 0 && turning == 1)
{
    if (facing == RIGHT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(998, sTAimR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1093, sTAimR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(925, sTAimR_fusion)
            aspry = -23
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1003, sTAimUR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1098, sTAimUR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(930, sTAimUR_fusion)
            asprx = -2
            aspry = -23
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(995, sTAimDR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1090, sTAimDR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(922, sTAimDR_fusion)
            asprx = -1
            aspry = -23
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1002, sTAimUpR_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1097, sTAimUpR_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(929, sTAimUpR_fusion)
            aspry = -25
        }
    }
    if (facing == LEFT)
    {
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(996, sTAimL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1091, sTAimL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(923, sTAimL_fusion)
            aspry = -23
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1000, sTAimUL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1095, sTAimUL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(927, sTAimUL_fusion)
            asprx = -3
            aspry = -23
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(994, sTAimDL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1089, sTAimDL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(921, sTAimDL_fusion)
            aspry = -23
        }
        if (aimdirection == 6)
        {
            if (set == 0)
                aspr1 = scr_suit_sprites(1001, sTAimUpL_fusion)
            if (set == 1)
                aspr1 = scr_suit_sprites(1096, sTAimUpL_fusion)
            if (set == 2)
                aspr1 = scr_suit_sprites(928, sTAimUpL_fusion)
            asprx = -1
            aspry = -25
        }
    }
}
aspr2 = 66
aspr2x = 0
aspr2y = 0
aspr2a = 0
if (facing == RIGHT && morphing == 0 && unmorphing == 0)
{
    if (state == STANDING && landing == 0 && turning == 0 && armcannon == 1)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69
            aspr2x = 14
            aspr2y = -27
        }
        if (aimdirection == 2)
        {
            aspr2 = 73
            aspr2x = 10
            aspr2y = -37
        }
        if (aimdirection == 4)
        {
            aspr2 = 73
            aspr2x = 11
            aspr2y = -19
            aspr2a = -90
        }
        if (aimdirection == 6)
        {
            aspr2 = 69
            aspr2x = 3
            aspr2y = -42
            aspr2a = 90
        }
    }
    if (state == STANDING && landing == 1 && turning == 0)
    {
        if (aimdirection == 0)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69
                aspr2x = 13
                aspr2y = -13
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = 13
                aspr2y = -20
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69
                aspr2x = 14
                aspr2y = -24
            }
        }
        if (aimdirection == 2)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73
                aspr2x = 9
                aspr2y = -26
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73
                aspr2x = 7
                aspr2y = -31
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73
                aspr2x = 8
                aspr2y = -35
            }
        }
        if (aimdirection == 4)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73
                aspr2x = 11
                aspr2y = -8
                aspr2a = -90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73
                aspr2x = 9
                aspr2y = -13
                aspr2a = -90
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73
                aspr2x = 10
                aspr2y = -17
                aspr2a = -90
            }
        }
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69
                aspr2x = 3
                aspr2y = -31
                aspr2a = 90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = 1
                aspr2y = -36
                aspr2a = 90
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69
                aspr2x = 2
                aspr2y = -40
                aspr2a = 90
            }
        }
    }
    if (state == DUCKING && turning == 0)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69
            aspr2x = 13
            aspr2y = -13
        }
        if (aimdirection == 2)
        {
            aspr2 = 73
            aspr2x = 9
            aspr2y = -26
        }
        if (aimdirection == 4)
        {
            aspr2 = 73
            aspr2x = 11
            aspr2y = -8
            aspr2a = -90
        }
        if (aimdirection == 6)
        {
            aspr2 = 69
            aspr2x = 3
            aspr2y = -32
            aspr2a = 90
        }
    }
    if (state == JUMPING && vjump == 1 && turning == 0)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69
            aspr2x = 12
            aspr2y = -23
        }
        if (aimdirection == 2)
        {
            aspr2 = 73
            aspr2x = 9
            aspr2y = -36
        }
        if (aimdirection == 4)
        {
            aspr2 = 73
            aspr2x = 11
            aspr2y = -18
            aspr2a = -90
        }
        if (aimdirection == 6)
        {
            aspr2 = 69
            aspr2x = 3
            aspr2y = -42
            aspr2a = 90
        }
        if (aimdirection == 7)
        {
            aspr2 = 69
            aspr2x = 3
            aspr2y = -7
            aspr2a = -90
        }
    }
    if (state == RUNNING && turning == 0 && walking == 0)
    {
        if (aimdirection == 0)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69
                aspr2x = 13
                aspr2y = -27
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = 14
                aspr2y = -28
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69
                aspr2x = 15
                aspr2y = -29
            }
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 69
                aspr2x = 16
                aspr2y = -28
            }
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 69
                aspr2x = 14
                aspr2y = -28
            }
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 69
                aspr2x = 13
                aspr2y = -27
            }
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 69
                aspr2x = 13
                aspr2y = -28
            }
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 69
                aspr2x = 14
                aspr2y = -29
            }
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 69
                aspr2x = 15
                aspr2y = -29
            }
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 69
                aspr2x = 14
                aspr2y = -28
            }
        }
        if (aimdirection == 2)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73
                aspr2x = 9
                aspr2y = -37
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73
                aspr2x = 10
                aspr2y = -38
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73
                aspr2x = 11
                aspr2y = -39
            }
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 73
                aspr2x = 12
                aspr2y = -38
            }
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 73
                aspr2x = 10
                aspr2y = -38
            }
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 73
                aspr2x = 9
                aspr2y = -37
            }
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 73
                aspr2x = 9
                aspr2y = -38
            }
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 73
                aspr2x = 10
                aspr2y = -39
            }
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 73
                aspr2x = 11
                aspr2y = -39
            }
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 73
                aspr2x = 10
                aspr2y = -38
            }
        }
        if (aimdirection == 4)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73
                aspr2x = 9
                aspr2y = -19
                aspr2a = -90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73
                aspr2x = 10
                aspr2y = -20
                aspr2a = -90
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73
                aspr2x = 11
                aspr2y = -21
                aspr2a = -90
            }
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 73
                aspr2x = 12
                aspr2y = -20
                aspr2a = -90
            }
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 73
                aspr2x = 10
                aspr2y = -20
                aspr2a = -90
            }
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 73
                aspr2x = 9
                aspr2y = -19
                aspr2a = -90
            }
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 73
                aspr2x = 9
                aspr2y = -20
                aspr2a = -90
            }
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 73
                aspr2x = 10
                aspr2y = -21
                aspr2a = -90
            }
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 73
                aspr2x = 11
                aspr2y = -21
                aspr2a = -90
            }
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 73
                aspr2x = 10
                aspr2y = -20
                aspr2a = -90
            }
        }
    }
    if (state == RUNNING && turning == 0 && walking == 1)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = 14
                aspr2y = -26
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = 14
                aspr2y = -27
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = 14
                aspr2y = -27
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = 14
                aspr2y = -26
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = 14
                aspr2y = -26
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = 14
                aspr2y = -26
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = 14
                aspr2y = -27
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = 14
                aspr2y = -27
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = 14
                aspr2y = -26
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = 14
                aspr2y = -26
            }
        }
        if (aimdirection == 2)
        {
            aspr2 = 73
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = 11
                aspr2y = -35
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = 11
                aspr2y = -36
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = 11
                aspr2y = -36
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = 11
                aspr2y = -35
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = 11
                aspr2y = -35
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = 11
                aspr2y = -35
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = 11
                aspr2y = -36
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = 11
                aspr2y = -36
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = 11
                aspr2y = -35
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = 11
                aspr2y = -35
            }
        }
        if (aimdirection == 4)
        {
            aspr2 = 73
            aspr2a = -90
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = 11
                aspr2y = -17
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = 11
                aspr2y = -18
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = 11
                aspr2y = -18
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = 11
                aspr2y = -17
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = 11
                aspr2y = -17
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = 11
                aspr2y = -17
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = 11
                aspr2y = -18
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = 11
                aspr2y = -18
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = 11
                aspr2y = -17
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = 11
                aspr2y = -17
            }
        }
        if (aimdirection == 6)
        {
            aspr2 = 69
            aspr2a = 90
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = 3
                aspr2y = -40
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = 3
                aspr2y = -41
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = 3
                aspr2y = -41
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = 3
                aspr2y = -40
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = 3
                aspr2y = -40
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = 3
                aspr2y = -40
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = 3
                aspr2y = -41
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = 3
                aspr2y = -41
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = 3
                aspr2y = -40
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = 3
                aspr2y = -40
            }
        }
    }
    if (state == GRIP && turning == 0)
    {
        if (aimdirection == 6)
        {
            aspr2 = 70
            aspr2x = -7
            aspr2y = -36
            aspr2a = 90
        }
        if (aimdirection == 3)
        {
            aspr2 = 74
            aspr2x = -17
            aspr2y = -27
            aspr2a = 90
        }
        if (aimdirection == 1)
        {
            aspr2 = 70
            aspr2x = -20
            aspr2y = -18
            aspr2a = 180
        }
        if (aimdirection == 5)
        {
            aspr2 = 74
            aspr2x = -15
            aspr2y = -9
            aspr2a = 180
        }
        if (aimdirection == 7)
        {
            aspr2 = 70
            aspr2x = -5
            aspr2y = -4
            aspr2a = -90
        }
        if (aimdirection == 0)
        {
            aspr2 = 70
            aspr2x = -3
            aspr2y = -5
            aspr2a = -90
        }
    }
    if (state == GRIP && turning == 1)
    {
        aspr2 = 74
        aspr2x = -11
        aspr2y = -10
        aspr2a = 200
    }
    if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70
                aspr2x = -1
                aspr2y = -42
                aspr2a = 90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = 2
                aspr2y = -42
                aspr2a = 90
            }
        }
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6
                aspr2y = -28
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6
                aspr2y = -28
            }
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6
                aspr2y = -34
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6
                aspr2y = -34
            }
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6
                aspr2y = -15
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6
                aspr2y = -15
            }
        }
    }
    if (state == JUMPING && vjump == 1 && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70
                aspr2x = -1
                aspr2y = -43
                aspr2a = 90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = 2
                aspr2y = -43
                aspr2a = 90
            }
        }
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6
                aspr2y = -27
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6
                aspr2y = -27
            }
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6
                aspr2y = -33
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6
                aspr2y = -33
            }
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6
                aspr2y = -14
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6
                aspr2y = -14
            }
        }
    }
    if (state == DUCKING && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70
                aspr2x = -1
                aspr2y = -33
                aspr2a = 90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = 2
                aspr2y = -33
                aspr2a = 90
            }
        }
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6
                aspr2y = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6
                aspr2y = -12
            }
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6
                aspr2y = -26
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6
                aspr2y = -26
            }
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -6
                aspr2y = -9
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 6
                aspr2y = -9
            }
        }
    }
    if (state == CLIMBING)
    {
        if (statetime == 0)
        {
            aspr2 = 70
            aspr2x = -4
            aspr2y = -5
            aspr2a = -90
        }
        if (statetime >= 1 && statetime <= 3)
        {
            aspr2 = 73
            aspr2x = 2
            aspr2y = -11
            aspr2a = -90
        }
        if (statetime >= 4 && statetime <= 6)
        {
            aspr2 = 73
            aspr2x = 5
            aspr2y = -10
            aspr2a = -90
        }
        if (statetime == 7)
        {
            aspr2 = 73
            aspr2x = 6
            aspr2y = -10
            aspr2a = -90
        }
        if (statetime == 8)
        {
            aspr2 = 73
            aspr2x = 6
            aspr2y = -11
            aspr2a = -90
        }
        if (statetime == 9)
        {
            aspr2 = 73
            aspr2x = 6
            aspr2y = -12
            aspr2a = -90
        }
        if (statetime == 10)
        {
            aspr2 = 73
            aspr2x = 5
            aspr2y = -9
            aspr2a = -90
        }
        if (statetime == 11)
        {
            aspr2 = 73
            aspr2x = 5
            aspr2y = -7
            aspr2a = -90
        }
        if (statetime == 12)
        {
            aspr2 = 73
            aspr2x = 5
            aspr2y = -5
            aspr2a = -90
        }
        if (statetime == 13)
        {
            aspr2 = 73
            aspr2x = 5
            aspr2y = -3
            aspr2a = -90
        }
    }
    if (state == BRAKING && sjball == 0)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2 = 73
            aspr2x = -2
            aspr2y = -14
            aspr2a = -90
        }
        if (image_index >= 1 && image_index < 2)
        {
            aspr2 = 73
            aspr2x = 0
            aspr2y = -15
            aspr2a = -90
        }
        if (image_index >= 2 && image_index < 3)
        {
            aspr2 = 73
            aspr2x = 8
            aspr2y = -18
            aspr2a = -90
        }
    }
    if (state == JUMPING && vjump == 0)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = 8
            aspr2y = -18
        }
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = 5
            aspr2y = -10
        }
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = 2
            aspr2y = -2
        }
        if (image_index >= 3 && image_index < 4)
        {
            aspr2x = -5
            aspr2y = -10
        }
        if (image_index >= 4 && image_index < 5)
        {
            aspr2x = -8
            aspr2y = -18
        }
        if (image_index >= 5 && image_index < 6)
        {
            aspr2x = -5
            aspr2y = -24
        }
        if (image_index >= 6 && image_index < 7)
        {
            aspr2x = -2
            aspr2y = -28
        }
        if (image_index >= 7 && image_index < 8)
        {
            aspr2x = 5
            aspr2y = -24
        }
    }
    if (state == JUMPING && walljumping == 1)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = -6
            aspr2y = -10
        }
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = -5
            aspr2y = -10
        }
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = -3
            aspr2y = -11
        }
    }
    if (state == SJSTART)
    {
        if (image_index >= 0 && image_index < 3)
        {
            aspr2x = 1
            aspr2y = -15
        }
        if (image_index >= 3)
        {
            aspr2x = 1
            aspr2y = -12
        }
    }
    if (state == SUPERJUMP && sjdir == 0)
    {
        if (image_index < 2)
        {
            aspr2x = 0
            aspr2y = -12
        }
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = -6
            aspr2y = -12
        }
        if (image_index >= 3 && image_index < 4)
        {
            aspr2x = -9
            aspr2y = -12
        }
        if (image_index >= 4 && image_index < 5)
        {
            aspr2x = -6
            aspr2y = -12
        }
        if (image_index >= 5 && image_index < 6)
        {
            aspr2x = 0
            aspr2y = -12
        }
        if (image_index >= 6 && image_index < 7)
        {
            aspr2x = 5
            aspr2y = -12
        }
        if (image_index >= 7 && image_index < 8)
        {
            aspr2x = 7
            aspr2y = -12
        }
        if (image_index >= 8 && image_index < 9)
        {
            aspr2x = 5
            aspr2y = -12
        }
    }
    if (state == SUPERJUMP && (sjdir == 1 || sjdir == 3))
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = -9
            aspr2y = -13
        }
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = -12
            aspr2y = -14
        }
        if (image_index >= 2)
        {
            aspr2x = -6
            aspr2y = -15
        }
    }
    if (state == SJEND)
    {
        if (statetime < 10)
        {
            if (sjdir == 0)
            {
                aspr2x = 0
                aspr2y = -12
            }
            if (sjdir == 1 || sjdir == 3)
            {
                aspr2x = -12
                aspr2y = -14
            }
        }
        if (statetime >= 10 && statetime < 28)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 8
                aspr2y = -18
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = 5
                aspr2y = -10
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2x = 2
                aspr2y = -2
            }
            if (image_index >= 3 && image_index < 4)
            {
                aspr2x = -5
                aspr2y = -10
            }
            if (image_index >= 4 && image_index < 5)
            {
                aspr2x = -8
                aspr2y = -18
            }
            if (image_index >= 5 && image_index < 6)
            {
                aspr2x = -5
                aspr2y = -24
            }
            if (image_index >= 6 && image_index < 7)
            {
                aspr2x = -2
                aspr2y = -28
            }
            if (image_index >= 7 && image_index < 8)
            {
                aspr2x = 5
                aspr2y = -24
            }
        }
        if (statetime >= 28)
        {
            aspr2x = 1
            aspr2y = -15
        }
    }
    if (state == GRABBEDQUEEN)
    {
        if (aimdirection == 0)
        {
            aspr2 = 69
            aspr2x = 14
            aspr2y = -27
        }
    }
}
if (facing == LEFT && morphing == 0 && unmorphing == 0)
{
    if (state == STANDING && landing == 0 && turning == 0 && armcannon == 1)
    {
        if (aimdirection == 1)
        {
            aspr2 = 69
            aspr2x = -14
            aspr2y = -27
        }
        if (aimdirection == 3)
        {
            aspr2 = 73
            aspr2x = -10
            aspr2y = -37
        }
        if (aimdirection == 5)
        {
            aspr2 = 73
            aspr2x = -11
            aspr2y = -19
            aspr2a = 90
        }
        if (aimdirection == 6)
        {
            aspr2 = 69
            aspr2x = -3
            aspr2y = -41
            aspr2a = -90
        }
    }
    if (state == STANDING && landing == 1 && turning == 0)
    {
        if (aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69
                aspr2x = -12
                aspr2y = -13
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = -12
                aspr2y = -20
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69
                aspr2x = -13
                aspr2y = -24
            }
        }
        if (aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73
                aspr2x = -9
                aspr2y = -26
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73
                aspr2x = -7
                aspr2y = -31
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73
                aspr2x = -8
                aspr2y = -35
            }
        }
        if (aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73
                aspr2x = -11
                aspr2y = -7
                aspr2a = 90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73
                aspr2x = -10
                aspr2y = -12
                aspr2a = 90
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73
                aspr2x = -11
                aspr2y = -16
                aspr2a = 90
            }
        }
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69
                aspr2x = -4
                aspr2y = -31
                aspr2a = -90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = -2
                aspr2y = -36
                aspr2a = -90
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69
                aspr2x = -3
                aspr2y = -40
                aspr2a = -90
            }
        }
    }
    if (state == DUCKING && turning == 0)
    {
        if (aimdirection == 1)
        {
            aspr2 = 69
            aspr2x = -12
            aspr2y = -13
        }
        if (aimdirection == 3)
        {
            aspr2 = 73
            aspr2x = -9
            aspr2y = -26
        }
        if (aimdirection == 5)
        {
            aspr2 = 73
            aspr2x = -11
            aspr2y = -8
            aspr2a = 90
        }
        if (aimdirection == 6)
        {
            aspr2 = 69
            aspr2x = -4
            aspr2y = -32
            aspr2a = -90
        }
    }
    if (state == JUMPING && vjump == 1 && turning == 0)
    {
        if (aimdirection == 1)
        {
            aspr2 = 69
            aspr2x = -12
            aspr2y = -23
        }
        if (aimdirection == 3)
        {
            aspr2 = 73
            aspr2x = -9
            aspr2y = -36
        }
        if (aimdirection == 5)
        {
            aspr2 = 73
            aspr2x = -11
            aspr2y = -18
            aspr2a = 90
        }
        if (aimdirection == 6)
        {
            aspr2 = 69
            aspr2x = -4
            aspr2y = -42
            aspr2a = -90
        }
        if (aimdirection == 7)
        {
            aspr2 = 69
            aspr2x = -4
            aspr2y = -7
            aspr2a = 90
        }
    }
    if (state == RUNNING && turning == 0 && walking == 0)
    {
        if (aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 69
                aspr2x = -13
                aspr2y = -27
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = -14
                aspr2y = -28
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 69
                aspr2x = -15
                aspr2y = -29
            }
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 69
                aspr2x = -16
                aspr2y = -28
            }
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 69
                aspr2x = -14
                aspr2y = -28
            }
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 69
                aspr2x = -13
                aspr2y = -27
            }
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 69
                aspr2x = -13
                aspr2y = -28
            }
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 69
                aspr2x = -14
                aspr2y = -29
            }
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 69
                aspr2x = -15
                aspr2y = -29
            }
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 69
                aspr2x = -14
                aspr2y = -28
            }
        }
        if (aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73
                aspr2x = -9
                aspr2y = -37
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73
                aspr2x = -10
                aspr2y = -38
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73
                aspr2x = -11
                aspr2y = -39
            }
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 73
                aspr2x = -12
                aspr2y = -38
            }
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 73
                aspr2x = -10
                aspr2y = -38
            }
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 73
                aspr2x = -9
                aspr2y = -37
            }
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 73
                aspr2x = -9
                aspr2y = -38
            }
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 73
                aspr2x = -10
                aspr2y = -39
            }
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 73
                aspr2x = -11
                aspr2y = -39
            }
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 73
                aspr2x = -10
                aspr2y = -38
            }
        }
        if (aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 73
                aspr2x = -9
                aspr2y = -19
                aspr2a = 90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 73
                aspr2x = -10
                aspr2y = -20
                aspr2a = 90
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2 = 73
                aspr2x = -11
                aspr2y = -21
                aspr2a = 90
            }
            if (image_index >= 3 && image_index < 4)
            {
                aspr2 = 73
                aspr2x = -12
                aspr2y = -20
                aspr2a = 90
            }
            if (image_index >= 4 && image_index < 5)
            {
                aspr2 = 73
                aspr2x = -10
                aspr2y = -20
                aspr2a = 90
            }
            if (image_index >= 5 && image_index < 6)
            {
                aspr2 = 73
                aspr2x = -9
                aspr2y = -19
                aspr2a = 90
            }
            if (image_index >= 6 && image_index < 7)
            {
                aspr2 = 73
                aspr2x = -9
                aspr2y = -20
                aspr2a = 90
            }
            if (image_index >= 7 && image_index < 8)
            {
                aspr2 = 73
                aspr2x = -10
                aspr2y = -21
                aspr2a = 90
            }
            if (image_index >= 8 && image_index < 9)
            {
                aspr2 = 73
                aspr2x = -11
                aspr2y = -21
                aspr2a = 90
            }
            if (image_index >= 9 && image_index < 10)
            {
                aspr2 = 73
                aspr2x = -10
                aspr2y = -20
                aspr2a = 90
            }
        }
    }
    if (state == RUNNING && turning == 0 && walking == 1)
    {
        if (aimdirection == 1)
        {
            aspr2 = 69
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = -14
                aspr2y = -26
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = -14
                aspr2y = -27
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = -14
                aspr2y = -27
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = -14
                aspr2y = -26
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = -14
                aspr2y = -26
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = -14
                aspr2y = -26
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = -14
                aspr2y = -27
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = -14
                aspr2y = -27
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = -14
                aspr2y = -26
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = -14
                aspr2y = -26
            }
        }
        if (aimdirection == 3)
        {
            aspr2 = 73
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = -11
                aspr2y = -35
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = -11
                aspr2y = -36
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = -11
                aspr2y = -36
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = -11
                aspr2y = -35
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = -11
                aspr2y = -35
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = -11
                aspr2y = -35
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = -11
                aspr2y = -36
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = -11
                aspr2y = -36
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = -11
                aspr2y = -35
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = -11
                aspr2y = -35
            }
        }
        if (aimdirection == 5)
        {
            aspr2 = 73
            aspr2a = 90
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = -11
                aspr2y = -17
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = -11
                aspr2y = -18
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = -11
                aspr2y = -18
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = -11
                aspr2y = -17
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = -11
                aspr2y = -17
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = -11
                aspr2y = -17
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = -11
                aspr2y = -18
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = -11
                aspr2y = -18
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = -11
                aspr2y = -17
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = -11
                aspr2y = -17
            }
        }
        if (aimdirection == 6)
        {
            aspr2 = 69
            aspr2a = 270
            if (abs(image_index) >= 0 && abs(image_index) < 1)
            {
                aspr2x = -4
                aspr2y = -40
            }
            if (abs(image_index) >= 1 && abs(image_index) < 2)
            {
                aspr2x = -4
                aspr2y = -41
            }
            if (abs(image_index) >= 2 && abs(image_index) < 3)
            {
                aspr2x = -4
                aspr2y = -41
            }
            if (abs(image_index) >= 3 && abs(image_index) < 4)
            {
                aspr2x = -4
                aspr2y = -40
            }
            if (abs(image_index) >= 4 && abs(image_index) < 5)
            {
                aspr2x = -4
                aspr2y = -40
            }
            if (abs(image_index) >= 5 && abs(image_index) < 6)
            {
                aspr2x = -4
                aspr2y = -40
            }
            if (abs(image_index) >= 6 && abs(image_index) < 7)
            {
                aspr2x = -4
                aspr2y = -41
            }
            if (abs(image_index) >= 7 && abs(image_index) < 8)
            {
                aspr2x = -4
                aspr2y = -41
            }
            if (abs(image_index) >= 8 && abs(image_index) < 9)
            {
                aspr2x = -4
                aspr2y = -40
            }
            if (abs(image_index) >= 9 && abs(image_index) < 10)
            {
                aspr2x = -4
                aspr2y = -40
            }
        }
    }
    if (state == GRIP && turning == 0)
    {
        if (aimdirection == 6)
        {
            aspr2 = 70
            aspr2x = 7
            aspr2y = -35
            aspr2a = -90
        }
        if (aimdirection == 2)
        {
            aspr2 = 74
            aspr2x = 17
            aspr2y = -26
            aspr2a = -90
        }
        if (aimdirection == 0)
        {
            aspr2 = 70
            aspr2x = 20
            aspr2y = -17
            aspr2a = 180
        }
        if (aimdirection == 4)
        {
            aspr2 = 74
            aspr2x = 15
            aspr2y = -8
            aspr2a = 180
        }
        if (aimdirection == 7)
        {
            aspr2 = 71
            aspr2x = 5
            aspr2y = -3
            aspr2a = 90
        }
        if (aimdirection == 1)
        {
            aspr2 = 72
            aspr2x = 4
            aspr2y = -4
            aspr2a = 90
        }
    }
    if (state == GRIP && turning == 1)
    {
        aspr2 = 74
        aspr2x = 11
        aspr2y = -10
        aspr2a = -200
    }
    if ((state == STANDING || state == RUNNING) && landing == 0 && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70
                aspr2x = 2
                aspr2y = -41
                aspr2a = -90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = -1
                aspr2y = -41
                aspr2a = -90
            }
        }
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6
                aspr2y = -28
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6
                aspr2y = -28
            }
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6
                aspr2y = -34
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6
                aspr2y = -34
            }
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6
                aspr2y = -15
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6
                aspr2y = -15
            }
        }
    }
    if (state == JUMPING && vjump == 1 && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70
                aspr2x = 0
                aspr2y = -42
                aspr2a = -90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = -3
                aspr2y = -42
                aspr2a = -90
            }
        }
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6
                aspr2y = -27
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6
                aspr2y = -27
            }
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6
                aspr2y = -33
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6
                aspr2y = -33
            }
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6
                aspr2y = -14
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6
                aspr2y = -14
            }
        }
    }
    if (state == DUCKING && turning == 1)
    {
        if (aimdirection == 6)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2 = 70
                aspr2x = 0
                aspr2y = -32
                aspr2a = -90
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2 = 69
                aspr2x = -3
                aspr2y = -32
                aspr2a = -90
            }
        }
        if (aimdirection == 0 || aimdirection == 1)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6
                aspr2y = -12
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6
                aspr2y = -12
            }
        }
        if (aimdirection == 2 || aimdirection == 3)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6
                aspr2y = -26
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6
                aspr2y = -26
            }
        }
        if (aimdirection == 4 || aimdirection == 5)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = 6
                aspr2y = -9
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -6
                aspr2y = -9
            }
        }
    }
    if (state == CLIMBING)
    {
        if (statetime == 0)
        {
            aspr2 = 72
            aspr2x = 4
            aspr2y = -6
            aspr2a = 90
        }
        if (statetime >= 4 && statetime <= 6)
        {
            aspr2 = 73
            aspr2x = -7
            aspr2y = -10
            aspr2a = 90
        }
        if (statetime == 7)
        {
            aspr2 = 73
            aspr2x = -8
            aspr2y = -10
            aspr2a = 90
        }
        if (statetime == 8)
        {
            aspr2 = 73
            aspr2x = -8
            aspr2y = -11
            aspr2a = 90
        }
        if (statetime == 9)
        {
            aspr2 = 73
            aspr2x = -8
            aspr2y = -12
            aspr2a = 90
        }
        if (statetime == 10)
        {
            aspr2 = 73
            aspr2x = -7
            aspr2y = -9
            aspr2a = 90
        }
        if (statetime == 11)
        {
            aspr2 = 73
            aspr2x = -7
            aspr2y = -7
            aspr2a = 90
        }
        if (statetime == 12)
        {
            aspr2 = 73
            aspr2x = -7
            aspr2y = -5
            aspr2a = 90
        }
        if (statetime == 13)
        {
            aspr2 = 73
            aspr2x = -7
            aspr2y = -3
            aspr2a = 90
        }
    }
    if (state == BRAKING && sjball == 0)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = -2
            aspr2y = -14
            aspr2a = -90
        }
        if (image_index >= 1 && image_index < 2)
        {
            aspr2 = 73
            aspr2x = -9
            aspr2y = -16
            aspr2a = 90
        }
        if (image_index >= 2 && image_index < 3)
        {
            aspr2 = 73
            aspr2x = -10
            aspr2y = -18
            aspr2a = 90
        }
    }
    if (state == JUMPING && vjump == 0)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = -8
            aspr2y = -18
        }
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = -5
            aspr2y = -10
        }
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = -2
            aspr2y = -2
        }
        if (image_index >= 3 && image_index < 4)
        {
            aspr2x = 5
            aspr2y = -10
        }
        if (image_index >= 4 && image_index < 5)
        {
            aspr2x = 8
            aspr2y = -18
        }
        if (image_index >= 5 && image_index < 6)
        {
            aspr2x = 5
            aspr2y = -24
        }
        if (image_index >= 6 && image_index < 7)
        {
            aspr2x = 2
            aspr2y = -28
        }
        if (image_index >= 7 && image_index < 8)
        {
            aspr2x = -5
            aspr2y = -24
        }
    }
    if (state == JUMPING && walljumping == 1)
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = 6
            aspr2y = -10
        }
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = 5
            aspr2y = -10
        }
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = 3
            aspr2y = -11
        }
    }
    if (state == SJSTART)
    {
        if (image_index >= 0 && image_index < 3)
        {
            aspr2x = -1
            aspr2y = -15
        }
        if (image_index >= 3)
        {
            aspr2x = -1
            aspr2y = -12
        }
    }
    if (state == SUPERJUMP && sjdir == 0)
    {
        if (image_index < 2)
        {
            aspr2x = 0
            aspr2y = -12
        }
        if (image_index >= 2 && image_index < 3)
        {
            aspr2x = 6
            aspr2y = -12
        }
        if (image_index >= 3 && image_index < 4)
        {
            aspr2x = 9
            aspr2y = -12
        }
        if (image_index >= 4 && image_index < 5)
        {
            aspr2x = 6
            aspr2y = -12
        }
        if (image_index >= 5 && image_index < 6)
        {
            aspr2x = 0
            aspr2y = -12
        }
        if (image_index >= 6 && image_index < 7)
        {
            aspr2x = -5
            aspr2y = -12
        }
        if (image_index >= 7 && image_index < 8)
        {
            aspr2x = -7
            aspr2y = -12
        }
        if (image_index >= 8 && image_index < 9)
        {
            aspr2x = -5
            aspr2y = -12
        }
    }
    if (state == SUPERJUMP && (sjdir == 2 || sjdir == 4))
    {
        if (image_index >= 0 && image_index < 1)
        {
            aspr2x = 9
            aspr2y = -13
        }
        if (image_index >= 1 && image_index < 2)
        {
            aspr2x = 12
            aspr2y = -14
        }
        if (image_index >= 2)
        {
            aspr2x = 1
            aspr2y = -17
        }
    }
    if (state == SJEND)
    {
        if (statetime < 10)
        {
            if (sjdir == 0)
            {
                aspr2x = 0
                aspr2y = -12
            }
            if (sjdir == 2 || sjdir == 4)
            {
                aspr2x = 12
                aspr2y = -14
            }
        }
        if (statetime >= 10 && statetime < 28)
        {
            if (image_index >= 0 && image_index < 1)
            {
                aspr2x = -8
                aspr2y = -18
            }
            if (image_index >= 1 && image_index < 2)
            {
                aspr2x = -5
                aspr2y = -10
            }
            if (image_index >= 2 && image_index < 3)
            {
                aspr2x = -2
                aspr2y = -2
            }
            if (image_index >= 3 && image_index < 4)
            {
                aspr2x = 5
                aspr2y = -10
            }
            if (image_index >= 4 && image_index < 5)
            {
                aspr2x = 8
                aspr2y = -18
            }
            if (image_index >= 5 && image_index < 6)
            {
                aspr2x = 5
                aspr2y = -24
            }
            if (image_index >= 6 && image_index < 7)
            {
                aspr2x = 2
                aspr2y = -28
            }
            if (image_index >= 7 && image_index < 8)
            {
                aspr2x = -5
                aspr2y = -24
            }
        }
        if (statetime >= 28)
        {
            aspr2x = -1
            aspr2y = -15
        }
    }
    if (state == GRABBEDQUEEN)
    {
        if (aimdirection == 1 && image_index == 2)
        {
            aspr2 = 69
            aspr2x = -17
            aspr2y = -25
        }
    }
}
if (global.screwattack == 1 && state == JUMPING && vjump == 0 && walljumping == 0 && (inwater == 0 || global.currentsuit >= 2))
{
    if (fxtimer == 0)
        image_blend = make_color_rgb(120, 0, 160)
    if (fxtimer == 2)
        image_blend = make_color_rgb(150, 200, 150)
    if (fxtimer == 4)
        image_blend = make_color_rgb(180, 255, 200)
    instance_create(x, y, oScrewAttack)
    mytrail = instance_create(x, y, oFXTrail)
    mytrail.sprite_index = sprite_index
    mytrail.image_speed = image_speed
    mytrail.image_index = image_index
    mytrail.image_alpha = (0.3 + (fxtimer * 0.1))
    mytrail.additive = 1
    mytrail.fadespeed = 0.4
    mytrail.depth = -10
    if (facing == LEFT)
        mytrail.image_xscale = -1
    mytrail = instance_create(x, (y - 15), oFXTrail)
    mytrail.sprite_index = sScrewSpark
    mytrail.image_index = round(random(2))
    mytrail.image_alpha = (1 + (fxtimer * 0.1))
    mytrail.image_blend = make_color_rgb((50 + random(200)), 255, (50 + random(200)))
    if (random(10) < 1)
        mytrail.image_blend = c_white
    mytrail.additive = 1
    mytrail.fadespeed = 0.5
    mytrail.depth = -11
    if (random(10) < 5)
        mytrail.image_xscale = -1
    if (random(10) < 5)
        mytrail.image_yscale = -1
}
else
    image_blend = c_white
if (state == AIRBALL || (state == BALL && charge == 0))
{
    if (!instance_exists(oMBTrail))
        instance_create(x, y, oMBTrail)
}
if (state == JUMPING && global.spacejump == 1 && vjump == 0 && dash == 0 && charge == 0 && speedboost == 0 && (inwater == 0 || global.currentsuit >= 2))
{
    mytrail = instance_create(x, (y - 17), oSpaceJumpTrail)
    mytrail.image_angle = ((-image_index) * 45)
    if (facing == LEFT)
        mytrail.image_xscale = -1
}
if (speedboost == 1 || charge > 0 || state == SJSTART || state == SUPERJUMP || (state == SJEND && statetime < 10))
{
    if (fxtimer == 0)
        instance_create(x, y, oCharacterTrail)
    if (!instance_exists(oSBTrail))
        instance_create(x, y, oSBTrail)
}
if (state == SUPERJUMP || speedboost || (state == SJSTART && statetime > 16))
{
    mysb = instance_create(x, y, oSpeedBoost)
    if (facing == RIGHT)
    {
        if (state == SJSTART)
        {
            if (sjdir == 0)
                mysb.image_yscale = 1.2
            else
            {
                mysb.x = (x + 8)
                mysb.y = (y - 2)
                if (sjball == 0)
                    mysb.image_yscale = 1
                if (sjball == 1)
                    mysb.image_yscale = 0.4
            }
        }
        if (state == SUPERJUMP)
        {
            if (sjball == 0)
            {
                if (xVel != 0)
                    mysb.image_xscale = 1.8
                if (yVel == 0)
                    mysb.image_yscale = 0.8
            }
            if (sjball == 1)
            {
                if (xVel != 0)
                    mysb.image_xscale = 2
                if (yVel != 0 && xVel == 0)
                    mysb.image_yscale = 0.7
                else
                    mysb.image_yscale = 0.6
                if (yVel == 0)
                    mysb.image_yscale = 0.4
            }
        }
        if (state == JUMPING)
        {
            mysb.x = (x + 8)
            mysb.y = (y - 4)
            mysb.image_yscale = 1
            mysb.image_xscale = 2.2
            mysb2 = instance_create((x + 4), (y + 6), oSpeedBoost)
            mysb2.image_xscale = 1.8
            mysb2.image_yscale = 0.2
        }
        if (state == AIRBALL && speedboost)
        {
            mysb.x = (x + xVel)
            mysb.y = (y + (yVel * 2))
            mysb.image_yscale = 0.4
            mysb.image_xscale = 2
        }
        if ((state == RUNNING || state == BALL) && speedboost)
        {
            mysb.x = (x + 8)
            mysb.y = (y - 2)
            mysb.image_yscale = 0.8
            if (state == BALL)
                mysb.image_yscale = 0.4
            mysb2 = instance_create((x - 12), (y + 2), oSpeedBoost)
            mysb2.image_xscale = 0.1
            mysb2.image_yscale = 0.1
        }
    }
    if (facing == LEFT)
    {
        if (state == SJSTART)
        {
            if (sjdir == 0)
                mysb.image_yscale = 1.2
            else
            {
                mysb.x = (x - 8)
                mysb.y = (y - 2)
                if (sjball == 0)
                    mysb.image_yscale = 1
                if (sjball == 1)
                    mysb.image_yscale = 0.4
            }
        }
        if (state == SUPERJUMP)
        {
            if (sjball == 0)
            {
                if (xVel != 0)
                    mysb.image_xscale = 1.8
                if (yVel == 0)
                    mysb.image_yscale = 0.8
            }
            if (sjball == 1)
            {
                if (xVel != 0)
                    mysb.image_xscale = 2
                if (yVel != 0 && xVel == 0)
                    mysb.image_yscale = 0.7
                else
                    mysb.image_yscale = 0.6
                if (yVel == 0)
                    mysb.image_yscale = 0.4
            }
        }
        if (state == JUMPING)
        {
            mysb.x = (x - 8)
            mysb.y = (y - 4)
            mysb.image_yscale = 1
            mysb.image_xscale = 2.2
            mysb2 = instance_create((x - 4), (y + 6), oSpeedBoost)
            mysb2.image_xscale = 1.8
            mysb2.image_yscale = 0.2
        }
        if (state == AIRBALL && speedboost)
        {
            mysb.x = (x + xVel)
            mysb.y = (y + (yVel * 2))
            mysb.image_yscale = 0.4
            mysb.image_xscale = 2
        }
        if ((state == RUNNING || state == BALL) && speedboost)
        {
            mysb.x = (x - 8)
            mysb.y = (y - 2)
            mysb.image_yscale = 0.8
            if (state == BALL)
                mysb.image_yscale = 0.4
            mysb2 = instance_create((x + 12), (y + 2), oSpeedBoost)
            mysb2.image_xscale = 0.1
            mysb2.image_yscale = 0.1
        }
    }
}
if (state == SUPERJUMP && fxtimer == 0 && sjball == 0)
{
    if (sjdir == 0)
    {
        myspark = instance_create(x, (y - 32), oFXAnimSpark)
        myspark.image_angle = 90
        myspark.additive = 1
    }
    if (sjdir == 1)
        myspark = instance_create((x + 12), (y - 12), oFXAnimSpark)
    if (sjdir == 3)
    {
        myspark = instance_create((x + 12), (y - 16), oFXAnimSpark)
        myspark.image_angle = 20
    }
    if (sjdir == 2)
        myspark = instance_create((x - 12), (y - 12), oFXAnimSpark)
    if (sjdir == 4)
    {
        myspark = instance_create((x - 12), (y - 16), oFXAnimSpark)
        myspark.image_angle = 340
    }
    myspark.image_speed = 1
    myspark.additive = 1
    if (facing == LEFT && sjdir != 0)
        myspark.image_xscale = -1
}
if (state == SUPERJUMP && fxtimer == 0 && sjball == 1)
{
    if (sjdir == 0)
    {
        myspark = instance_create(x, (y - 15), oFXAnimSpark)
        myspark.image_angle = 90
        myspark.additive = 1
    }
    if (sjdir == 1)
        myspark = instance_create((x + 10), (y - 6), oFXAnimSpark)
    if (sjdir == 3)
    {
        myspark = instance_create((x + 10), (y - 8), oFXAnimSpark)
        myspark.image_angle = 20
    }
    if (sjdir == 2)
        myspark = instance_create((x - 10), (y - 6), oFXAnimSpark)
    if (sjdir == 4)
    {
        myspark = instance_create((x - 10), (y - 8), oFXAnimSpark)
        myspark.image_angle = 340
    }
    myspark.image_speed = 1
    myspark.additive = 1
    if (facing == LEFT && sjdir != 0)
        myspark.image_xscale = -1
}
if (state == RUNNING && speedboost && (fxtimer == 0 || fxtimer == 2 || fxtimer == 4))
    myspark = instance_create(x, (y - random(36)), oSBSpark)
if (onfire && fxtimer == 0)
{
    if (mask_index == sMask1)
        expl = instance_create((x + random_range(-8, 8)), (y - random(28)), oFXAnimSpark)
    else
        expl = instance_create((x + random_range(-8, 8)), (y - random(16)), oFXAnimSpark)
    expl.image_speed = 0.5
    expl.additive = 0
    expl.sprite_index = sExpl1
    expl.depth = -10
    expl.image_xscale = 0.5
    expl.image_yscale = 0.5
}
