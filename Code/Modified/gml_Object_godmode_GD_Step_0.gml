switch step
{
    case 0:
        if keyboard_check(ord("I"))
            step++
        break
    case 1:
        if keyboard_check(ord("D"))
            step++
        break
    case 2:
        if keyboard_check(ord("S"))
            step++
        break
    case 3:
        if keyboard_check(ord("P"))
            step++
        break
    case 4:
        if keyboard_check(ord("I"))
            step++
        break
    case 5:
        if keyboard_check(ord("S"))
            step++
        break
    case 6:
        if keyboard_check(ord("P"))
            step++
        break
    case 7:
        if keyboard_check(ord("O"))
            step++
        break
    case 8:
        if keyboard_check(ord("P"))
            step++
        break
    case 9:
        if keyboard_check(ord("D"))
        {
            step++
            if (global.godmode == 1)
                global.godmode = 0
            else
                global.godmode = 1
        }
        break
    default:
        step = 0
        break
}

