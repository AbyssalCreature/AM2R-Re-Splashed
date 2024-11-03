if (global.dpad_rebind == 1)
{
    for (i = 10; i <= 22; i += 1)
        op[i].y += 64
    op[6].visible = true
    canedit[6] = 1
    op[7].visible = true
    canedit[7] = 1
    op[8].visible = true
    canedit[8] = 1
    op[9].visible = true
    canedit[9] = 1
}
else
{
    if (targety > 335)
    {
        targety = 335
        y = targety
    }
    if (op[10].y != 204)
    {
        for (i = 10; i <= 22; i += 1)
            op[i].y -= 64
    }
    op[6].visible = false
    canedit[6] = 0
    op[7].visible = false
    canedit[7] = 0
    op[8].visible = false
    canedit[8] = 0
    op[9].visible = false
    canedit[9] = 0
}
