switch argument0
{
    case 0:
        oControl.bombs_placed = 1
        oControl.twocount_B_SJ++
        oControl.threecount++
        break
    case 4:
        oControl.hijump_placed = 1
        oControl.twocount_HJ_SJ++
        oControl.threecount++
        break
    case 6:
        oControl.spacejump_placed = 1
        oControl.twocount_B_SJ++
        oControl.twocount_HJ_SJ++
        oControl.threecount++
        break
    case 7:
        oControl.speed_placed = 1
        break
    case 8:
        oControl.screw_placed = 1
        break
}

