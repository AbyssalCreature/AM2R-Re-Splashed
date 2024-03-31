if (!remoteItem)
    exit
if (multiItem < 15)
    global.inventory[multiItem] = 1
switch multiItem
{
    case 0:
        global.bomb = 1
        global.event[50] = 1
        break
    case 2:
        global.spiderball = 1
        break
    case 3:
        global.jumpball = 1
        break
    case 4:
        global.hijump = 1
        break
    case 5:
        global.SuitChange = 1
        if collision_line((x + 8), (y - 8), (x + 8), (y - 32), oSolid, false, true)
            global.SuitChange = 0
        if (!(collision_point((x + 8), (y + 8), oSolid, 0, 1)))
            global.SuitChange = 0
        global.SuitChangeX = x
        global.SuitChangeY = y
        global.SuitChangeGravity = 0
        if active
        {
            with (oCharacter)
                alarm[1] = 1
        }
        break
    case 6:
        with (oCharacter)
            sfx_stop(spinjump_sound)
        global.spacejump = 1
        break
    case 7:
        global.speedbooster = 1
        break
    case 8:
        global.screwattack = 1
        with (oCharacter)
            sfx_stop(spinjump_sound)
        break
    case 9:
        global.SuitChange = 1
        if collision_line((x + 8), (y - 8), (x + 8), (y - 32), oSolid, false, true)
            global.SuitChange = 0
        if (!(collision_point((x + 8), (y + 8), oSolid, 0, 1)))
            global.SuitChange = 0
        global.SuitChangeX = x
        global.SuitChangeY = y
        global.SuitChangeGravity = 1
        if active
        {
            with (oCharacter)
                alarm[4] = 1
        }
        break
    case 10:
        global.cbeam = 1
        break
    case 11:
        global.ibeam = 1
        break
    case 12:
        global.wbeam = 1
        break
    case 13:
        global.sbeam = 1
        break
    case 14:
        global.pbeam = 1
        break
    case 15:
        popup_text(get_text("Notifications", "MissileTank"))
        if (global.difficulty < 2)
            global.maxmissiles += 5
        if (global.difficulty == 2)
            global.maxmissiles += 2
        global.missiles = global.maxmissiles
        global.mtanks += 1
        break
    case 16:
        popup_text(get_text("Notifications", "SuperMissileTank"))
        if (global.difficulty < 2)
            global.maxsmissiles += 2
        if (global.difficulty == 2)
            global.maxsmissiles += 1
        global.smissiles = global.maxsmissiles
        global.stanks += 1
        break
    case 17:
        popup_text(get_text("Notifications", "EnergyTank"))
        global.maxhealth += (100 * oControl.mod_etankhealthmult)
        global.playerhealth = global.maxhealth
        global.etanks += 1
        break
    case 18:
        popup_text(get_text("Notifications", "PowerBombTank"))
        if (global.difficulty < 2)
            global.maxpbombs += 2
        if (global.difficulty == 2)
            global.maxpbombs += 1
        global.pbombs = global.maxpbombs
        global.ptanks += 1
        break
    case 19:
        popup_text("Metroid DNA Acquired")
        global.dnatanks += 1
        break
}

