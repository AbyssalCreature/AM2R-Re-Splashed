if (oMapCursor.state == 0 || oMapCursor.state == 2)
{
    if (oControl.kUp > 0)
        targety -= 2
    if (oControl.kDown > 0)
        targety += 2
    if (oControl.kLeft > 0)
        targetx -= 2
    if (oControl.kRight > 0)
        targetx += 2
    if (targety < 120)
        targety = 120
    if (targety > 448)
        targety = 448
    if (targetx < 160)
        targetx = 160
    if (targetx > 472)
        targetx = 472
}
if (oMapCursor.state == 1 && instance_exists(oMapMarker))
{
    targetx = (oMapMarker.x + 4)
    targety = (oMapMarker.y + 4)
}
if (targetx != x)
    x += ((targetx - x) / 8)
if (targety != y)
    y += ((targety - y) / 8)
