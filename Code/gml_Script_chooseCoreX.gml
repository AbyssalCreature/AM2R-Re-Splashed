var corestr, sensstr;
switch argument0
{
    case 0:
        corestr = "sCoreXBomb"
        break
    case 2:
        corestr = "sCoreXSBall"
        break
    case 3:
        corestr = "sCoreXJBall"
        break
    case 4:
        corestr = "sCoreXHJBoots"
        break
    case 5:
        corestr = "sCoreXVSuit"
        break
    case 6:
        corestr = "sCoreXSJump"
        break
    case 7:
        corestr = "sCoreXSBooster"
        break
    case 8:
        corestr = "sCoreXSAttack"
        break
    case 10:
        corestr = "sCoreXCBeam"
        break
    case 11:
        corestr = "sCoreXIBeam"
        break
    case 12:
        corestr = "sCoreXWBeam"
        break
    case 13:
        corestr = "sCoreXSBeam"
        break
    case 14:
        corestr = "sCoreXPBeam"
        break
    case 9:
        corestr = "sCoreXGSuit"
        break
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 60:
    case 100:
    case 101:
    case 102:
    case 104:
    case 105:
    case 106:
    case 107:
    case 109:
    case 111:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 159:
    case 161:
    case 163:
    case 202:
    case 203:
    case 204:
    case 205:
    case 208:
    case 210:
    case 211:
    case 214:
    case 250:
    case 252:
    case 255:
    case 257:
    case 259:
    case 303:
    case 304:
    case 307:
    case 308:
    case 309:
        corestr = "sCoreXMissile"
        break
    case 51:
    case 110:
    case 162:
    case 206:
    case 207:
    case 209:
    case 215:
    case 256:
    case 300:
    case 305:
        corestr = "sCoreXSMissile"
        break
    case 50:
    case 103:
    case 108:
    case 157:
    case 158:
    case 200:
    case 201:
    case 251:
    case 254:
    case 306:
        corestr = "sCoreXEnergy"
        break
    case 58:
    case 59:
    case 112:
    case 160:
    case 212:
    case 213:
    case 253:
    case 258:
    case 301:
    case 302:
        corestr = "sCoreXPBomb"
        break
    default:
        corestr = "sCoreXJBall"
        break
}

if global.opcorexsensitivity
    sensstr = "Sens"
else
    sensstr = ""
return asset_get_index(corestr + sensstr);
