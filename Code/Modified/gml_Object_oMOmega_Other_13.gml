if (target_mode == 0 && (x < limit_left || x > limit_right))
{
    targetx2 = (room_width / 2)
    target_mode = 1
}
if (target_mode == 0)
{
    targetx = oCharacter.x
    targety = oCharacter.y
}
else if (target_mode == 1)
{
    targetx = targetx2
    targety = y
}
