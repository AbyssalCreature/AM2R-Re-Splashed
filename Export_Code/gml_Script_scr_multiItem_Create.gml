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
            text2 = ((p_text1 + string((100 * oControl.mod_etankhealthmult))) + p_text2)
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
        sprite_index = sItemMW
        break
    default:
        sprite_index = sItemMW
        break
}

