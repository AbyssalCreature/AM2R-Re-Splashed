skip = 1
if (multiItem == -1)
    multiItem = GetMultiItem(itemid)
switch multiItem
{
    case 0:
        sprite_index = sItemBomb
        text1 = "Bombs"
        text1 = get_text("Items", "Bombs")
        text2 = "Press | in Morph Ball mode to deploy"
        text2 = get_text("Items", "Bombs_Text")
        btn1_name = "Fire"
        break
    case 1:
        sprite_index = sItemPowergrip
        break
    case 2:
        sprite_index = sItemSpiderBall
        text1 = get_text("Items", "SpiderBall")
        if (global.opspdstyle == 0)
        {
            if (global.opaimstyle == 0)
            {
                text2 = get_text("Items", "SpiderBallPress_Text1")
                btn1_name = "Aim"
            }
            else
            {
                text2 = get_text("Items", "SpiderBallPress_Text2")
                btn1_name = "Aim"
                btn2_name = "Aim2"
            }
        }
        if (global.opspdstyle == 1)
        {
            text2 = get_text("Items", "SpiderBallPress_Text1")
            btn1_name = "Down"
        }
        if (global.opspdstyle == 2)
        {
            if (global.opaimstyle == 0)
            {
                text2 = get_text("Items", "SpiderBallHold_Text1")
                btn1_name = "Aim"
            }
            else
            {
                text2 = get_text("Items", "SpiderBallHold_Text2")
                btn1_name = "Aim"
                btn2_name = "Aim2"
            }
        }
        break
    case 3:
        sprite_index = sItemJumpBall
        text1 = get_text("Items", "JumpBall")
        text2 = get_text("Items", "JumpBall_Text")
        btn1_name = "Jump"
        break
    case 4:
        sprite_index = sItemHijump
        text1 = get_text("Items", "HiJump")
        text2 = get_text("Items", "HiJump_Text")
        break
    case 5:
        sprite_index = sItemVariaSuit
        text1 = get_text("Items", "VariaSuit")
        text2 = get_text("Items", "VariaSuit_Text")
        break
    case 6:
        sprite_index = sItemSpaceJump
        text1 = get_text("Items", "SpaceJump")
        text2 = get_text("Items", "SpaceJump_Text")
        break
    case 7:
        sprite_index = sItemSpeedBooster
        text1 = get_text("Items", "SpeedBooster")
        text2 = get_text("Items", "SpeedBooster_Text")
        image_speed = 0.5
        break
    case 8:
        sprite_index = sItemScrewAttack
        text1 = get_text("Items", "ScrewAttack")
        text2 = get_text("Items", "ScrewAttack_Text")
        break
    case 9:
        sprite_index = sItemGravitySuit
        text1 = get_text("Items", "GravitySuit")
        text2 = get_text("Items", "GravitySuit_Text")
        break
    case 10:
        sprite_index = sItemChargeBeam
        text1 = get_text("Items", "ChargeBeam")
        text2 = get_text("Items", "ChargeBeam_Text")
        btn1_name = "Fire"
        break
    case 11:
        sprite_index = sItemIceBeam
        text1 = get_text("Items", "IceBeam")
        text2 = get_text("Items", "IceBeam_Text")
        break
    case 12:
        sprite_index = sItemWaveBeam
        text1 = get_text("Items", "WaveBeam")
        text2 = get_text("Items", "WaveBeam_Text")
        break
    case 13:
        sprite_index = sItemSpazerBeam
        text1 = get_text("Items", "SpazerBeam")
        text2 = get_text("Items", "SpazerBeam_Text")
        break
    case 14:
        sprite_index = sItemPlasmaBeam
        text1 = get_text("Items", "PlasmaBeam")
        text2 = get_text("Items", "PlasmaBeam_Text")
        break
    case 15:
        sprite_index = sItemMissile
        skip = 1
        text1 = get_text("Items", "MissileTank")
        text2 = get_text("Items", "MissileTank_Text")
        if (global.difficulty == 2)
            text2 = get_text("Items", "MissileTank_TextHard")
        break
    case 16:
        sprite_index = sItemSuperMissile
        skip = 1
        text1 = get_text("Items", "SuperMissileTank")
        text2 = get_text("Items", "SuperMissileTank_Text")
        if (global.opmslstyle == 1)
            btn1_name = "Missile"
        if (global.opmslstyle == 0)
            btn1_name = "Select"
        break
    case 17:
        sprite_index = sItemEnergyTank
        skip = 1
        text1 = get_text("Items", "EnergyTank")
        text2 = get_text("Items", "EnergyTank_Text")
        btn1_name = ""
        if (string_count("|", text2) > 0)
        {
            p_text1 = string_split(text2, 0, "|")
            p_text2 = string_split(text2, 1, "|")
            text2 = p_text1 + (string(100 * oControl.mod_etankhealthmult)) + p_text2
        }
        break
    case 18:
        sprite_index = sItemPowerBomb
        skip = 1
        text1 = get_text("Items", "PowerBombTank")
        text2 = get_text("Items", "PowerBombTank_Text")
        if (global.opmslstyle == 1)
            btn1_name = "Missile"
        if (global.opmslstyle == 0)
            btn1_name = "Select"
        break
    case 19:
        sprite_index = sItemDNA
        skip = 1
        break
    case 20:
        sprite_index = sItemChinyBombs
        text1 = "Bombs"
        text1 = get_text("Items", "Bombs")
        text2 = "Press | in Morph Ball mode to deploy"
        text2 = get_text("Items", "Bombs_Text")
        btn1_name = "Fire"
        break
    case 21:
        sprite_index = sItemChinyPowerGrip
        break
    case 22:
        sprite_index = sItemChinySpiderBall
        text1 = get_text("Items", "SpiderBall")
        if (global.opspdstyle == 0)
        {
            if (global.opaimstyle == 0)
            {
                text2 = get_text("Items", "SpiderBallPress_Text1")
                btn1_name = "Aim"
            }
            else
            {
                text2 = get_text("Items", "SpiderBallPress_Text2")
                btn1_name = "Aim"
                btn2_name = "Aim2"
            }
        }
        if (global.opspdstyle == 1)
        {
            text2 = get_text("Items", "SpiderBallPress_Text1")
            btn1_name = "Down"
        }
        if (global.opspdstyle == 2)
        {
            if (global.opaimstyle == 0)
            {
                text2 = get_text("Items", "SpiderBallHold_Text1")
                btn1_name = "Aim"
            }
            else
            {
                text2 = get_text("Items", "SpiderBallHold_Text2")
                btn1_name = "Aim"
                btn2_name = "Aim2"
            }
        }
        break
    case 23:
        sprite_index = sItemChinyJumpBall
        text1 = get_text("Items", "JumpBall")
        text2 = get_text("Items", "JumpBall_Text")
        btn1_name = "Jump"
        break
    case 24:
        sprite_index = sItemChinyHiJump
        text1 = get_text("Items", "HiJump")
        text2 = get_text("Items", "HiJump_Text")
        break
    case 25:
        sprite_index = sItemChinyVariaSuit
        text1 = get_text("Items", "VariaSuit")
        text2 = get_text("Items", "VariaSuit_Text")
        break
    case 26:
        sprite_index = sItemChinySpaceJump
        text1 = get_text("Items", "SpaceJump")
        text2 = get_text("Items", "SpaceJump_Text")
        break
    case 27:
        sprite_index = sItemChinySpeedBooster
        text1 = get_text("Items", "SpeedBooster")
        text2 = get_text("Items", "SpeedBooster_Text")
        image_speed = 0.5
        break
    case 28:
        sprite_index = sItemChinyScrewAttack
        text1 = get_text("Items", "ScrewAttack")
        text2 = get_text("Items", "ScrewAttack_Text")
        break
    case 29:
        sprite_index = sItemChinyGravitySuit
        text1 = get_text("Items", "GravitySuit")
        text2 = get_text("Items", "GravitySuit_Text")
        break
    case 30:
        sprite_index = sItemChinyChargeBeam
        text1 = get_text("Items", "ChargeBeam")
        text2 = get_text("Items", "ChargeBeam_Text")
        btn1_name = "Fire"
        break
    case 31:
        sprite_index = sItemChinyIceBeam
        text1 = get_text("Items", "IceBeam")
        text2 = get_text("Items", "IceBeam_Text")
        break
    case 32:
        sprite_index = sItemChinyWaveBeam
        text1 = get_text("Items", "WaveBeam")
        text2 = get_text("Items", "WaveBeam_Text")
        break
    case 33:
        sprite_index = sItemChinySpazerBeam
        text1 = get_text("Items", "SpazerBeam")
        text2 = get_text("Items", "SpazerBeam_Text")
        break
    case 34:
        sprite_index = sItemChinyPlasmaBeam
        text1 = get_text("Items", "PlasmaBeam")
        text2 = get_text("Items", "PlasmaBeam_Text")
        break
    case 35:
        sprite_index = sItemChinyMissileTank
        skip = 1
        text1 = get_text("Items", "MissileTank")
        text2 = get_text("Items", "MissileTank_Text")
        if (global.difficulty == 2)
            text2 = get_text("Items", "MissileTank_TextHard")
        break
    case 36:
        sprite_index = sItemChinySuperMissileTank
        skip = 1
        text1 = get_text("Items", "SuperMissileTank")
        text2 = get_text("Items", "SuperMissileTank_Text")
        if (global.opmslstyle == 1)
            btn1_name = "Missile"
        if (global.opmslstyle == 0)
            btn1_name = "Select"
        break
    case 37:
        sprite_index = sItemChinyEnergyTank
        skip = 1
        text1 = get_text("Items", "EnergyTank")
        text2 = get_text("Items", "EnergyTank_Text")
        btn1_name = ""
        if (string_count("|", text2) > 0)
        {
            p_text1 = string_split(text2, 0, "|")
            p_text2 = string_split(text2, 1, "|")
            text2 = p_text1 + (string(100 * oControl.mod_etankhealthmult)) + p_text2
        }
        break
    case 38:
        sprite_index = sItemChinyPowerBombTank
        skip = 1
        text1 = get_text("Items", "PowerBombTank")
        text2 = get_text("Items", "PowerBombTank_Text")
        if (global.opmslstyle == 1)
            btn1_name = "Missile"
        if (global.opmslstyle == 0)
            btn1_name = "Select"
        break
    case 39:
        sprite_index = sItemChinyDNA
        skip = 1
        break
    case 40:
        sprite_index = sItemEvilEnergyTankF
        break
    case 41:
        sprite_index = sItemEvilMissileF
        break
    case 42:
        sprite_index = sItemEvilPowerBombF
        break
    case 43:
        sprite_index = sItemQuestionMark
        break
    case 44:
        sprite_index = sItemEvilSuperMissileF
        break
    case 45:
        sprite_index = sItemEvilPowergripF
        break
    case 46:
        sprite_index = sItemEvilGravitySuitF
        break
    case 47:
        sprite_index = sItemEvilSpazerBeamF
        break
    case 50:
        sprite_index = sItemEvilBomb
        if oControl.mod_fusion
            sprite_index = sItemEvilBomb_Fusion
        break
    case 51:
        sprite_index = sItemEvilChargeBeam
        break
    case 52:
        sprite_index = sItemEvilDNA
        break
    case 53:
        sprite_index = sItemEvilEnergyTank
        if oControl.mod_fusion
            sprite_index = sItemEvilEnergyTank_Fusion
        break
    case 54:
        sprite_index = sItemEvilIceBeam
        break
    case 55:
        sprite_index = sItemEvilMissile
        if oControl.mod_fusion
            sprite_index = sItemEvilMissile_Fusion
        break
    case 56:
        sprite_index = sItemEvilPlasmaBeam
        break
    case 57:
        sprite_index = sItemEvilPowerBomb
        if oControl.mod_fusion
            sprite_index = sItemEvilPowerBomb_Fusion
        break
    case 58:
        sprite_index = sItemMWGold
        break
    case 59:
        sprite_index = sItemEvilSpazerBeam
        break
    case 60:
        sprite_index = sItemEvilSpeedBooster
        if oControl.mod_fusion
            sprite_index = sItemEvilSpeedBooster_Fusion
        break
    case 61:
        sprite_index = sItemEvilSuperMissile
        if oControl.mod_fusion
            sprite_index = sItemEvilSuperMissile_Fusion
        break
    case 62:
        sprite_index = sItemEvilWaveBeam
        break
    case 70:
        sprite_index = sItemVEvilBomb
        if oControl.mod_fusion
            sprite_index = sItemVEvilBomb_Fusion
        break
    case 71:
        sprite_index = sItemVEvilChargeBeam
        break
    case 72:
        sprite_index = sItemVEvilDNA
        break
    case 73:
        sprite_index = sItemVEvilEnergyTank
        if oControl.mod_fusion
            sprite_index = sItemVEvilEnergyTank_Fusion
        break
    case 74:
        sprite_index = sItemVEvilIceBeam
        if oControl.mod_fusion
            sprite_index = sItemVEvilIceBeam_Fusion
        break
    case 75:
        sprite_index = sItemVEvilMissile
        if oControl.mod_fusion
            sprite_index = sItemVEvilMissile_Fusion
        break
    case 76:
        sprite_index = sItemVEvilPlasmaBeam
        break
    case 77:
        sprite_index = sItemVEvilPowerBomb
        if oControl.mod_fusion
            sprite_index = sItemVEvilPowerBomb_Fusion
        break
    case 78:
        sprite_index = sItemMWGold
        break
    case 79:
        sprite_index = sItemVEvilSpazerBeam
        break
    case 80:
        sprite_index = sItemVEvilSpeedBooster
        if oControl.mod_fusion
            sprite_index = sItemVEvilSpeedBooster
        break
    case 81:
        sprite_index = sItemVEvilSuperMissile
        if oControl.mod_fusion
            sprite_index = sItemVEvilSuperMissile_Fusion
        break
    case 82:
        sprite_index = sItemVEvilWaveBeam
        break
    case 100:
        sprite_index = sItemMW
        break
    case 101:
        sprite_index = sItemMW2
        break
    case 102:
        sprite_index = sItemChinyAP
        break
    case 103:
        sprite_index = sItemChinyAP2
        break
    default:
        sprite_index = sItemMW2
        break
}

