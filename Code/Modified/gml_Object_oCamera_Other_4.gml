switch room
{
    case rm_a3a20:
    case 369:
    case 337:
    case 95:
        limit = 160
        break
    case 128:
        if (global.event[152] > 0)
        {
            limit = (floor((oControl.widescreen_space / 2)) + 160)
            break
        }
        else
        {
            targetwidth = 320
            limit = 160
            break
        }
    default:
        limit = (floor((oControl.widescreen_space / 2)) + 160)
        break
}

if (global.transitiontype == 1)
{
    x = global.camstartx
    y = global.camstarty
    lockx = 0
    locky = 0
    focus = 0
    ratiox = 4
    ratioy = 4
}
if (global.transitiontype == 0 && instance_exists(oWarpPipeTrigger))
{
    x = global.camstartx
    y = global.camstarty
}
roomstart = 1
