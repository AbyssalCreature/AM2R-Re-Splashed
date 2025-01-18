event_inherited()
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
